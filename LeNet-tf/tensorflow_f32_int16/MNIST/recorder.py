import math
import struct
import numpy as np
import tensorflow.compat.v1 as tf

tf.disable_v2_behavior()
BIT_WIDTH = 16
K = 8


# Data compression (float32->int16)
def To_Fixed(tensor, bit_width):
    array = tensor.eval()
    domain = max(np.max(array), -np.min(array))
    int_part = max(math.ceil(math.log(domain, 2) + 0.000001), 0) + 1  # 1 bit for sign
    fraction_part = bit_width - int_part
    return np.round(array * pow(2, fraction_part)), fraction_part  # /pow(2,fraction_part)


def Feature_To_Fixed(tensor, bit_width, feed_dict):
    array = tensor.eval(feed_dict=feed_dict)
    domain = max(np.max(array), -np.min(array))
    int_part = max(math.ceil(math.log(domain, 2) + 0.000001), 0) + 1  # 1 bit for sign
    fraction_part = bit_width - int_part
    return np.round(array * pow(2, fraction_part)), fraction_part  # /pow(2,fraction_part)


def Get_Feature_Fraction_Part(tensor, name, feed_dict, file):
    (array, fraction_part) = Feature_To_Fixed(tensor, BIT_WIDTH, feed_dict)
    file.write("%s = %d\n" % ("FRC_" + name.upper(), int(fraction_part)))


# tensor recorder--float 32
def Record_Tensor_f32(tensor, name):
    print("Recording uncompressed tensor " + name + " ...")
    f_dat = open('./record_float32/' + name + '.dat', 'w')
    f_bin = open('./record_float32/' + name + '.bin', 'wb')
    array = tensor.eval()
    if np.size(np.shape(array)) == 1:
        Record_Array1D_f32(array, f_dat, f_bin)
    else:
        if np.size(np.shape(array)) == 2:
            Record_Array2D_f32(array, f_dat, f_bin)
        else:
            if np.size(np.shape(array)) == 3:
                Record_Array3D_f32(array, f_dat, f_bin)
            else:
                Record_Array4D_f32(array, f_dat, f_bin)
    print(name + ".dat successfully recorded.")
    print(name + ".bin successfully recorded." + "\n")
    f_dat.close()
    f_bin.close()


def Record_Array1D_f32(array, f_dat, f_bin):
    for i1 in range(np.shape(array)[0]):
        f_dat.write(str(array[i1]) + "\n")
        a = struct.pack('f', float(array[i1]))
        f_bin.write(a)


def Record_Array2D_f32(array, f_dat, f_bin):
    for i2 in range(np.shape(array)[0]):
        for j2 in range(np.shape(array)[1]):
            f_dat.write(str(array[i2][j2]) + "\n")
            a = struct.pack('f', float(array[i2][j2]))
            f_bin.write(a)


def Record_Array3D_f32(array, f_dat, f_bin):
    for i3 in range(np.shape(array)[0]):
        for j3 in range(np.shape(array)[1]):
            for k3 in range(np.shape(array)[2]):
                f_dat.write(str(array[i3][j3][k3]) + "\n")
                a = struct.pack('f', float(array[i3][j3][k3]))
                f_bin.write(a)


def Record_Array4D_f32(array, f_dat, f_bin):
    for i4 in range(np.shape(array)[0]):
        for j4 in range(np.shape(array)[1]):
            for k4 in range(np.shape(array)[2]):
                for l4 in range(np.shape(array)[3]):
                    f_dat.write(str(array[i4][j4][k4][l4]) + "\n")
                    a = struct.pack('f', float(array[i4][j4][k4][l4]))
                    f_bin.write(a)


# tensor recorded--int 16
def Record_Tensor_i16(tensor, name, file):
    (array, fraction_part) = To_Fixed(tensor, BIT_WIDTH)
    file.write("%s = %d\n" % ("FRC_" + name.upper(), int(fraction_part)))
    print("Recording compressed tensor " + name + " ...")
    f_dat = open('./record_int16/' + name + '.dat', 'w')
    f_bin = open('./record_int16/' + name + '.bin', 'wb')
    if np.size(np.shape(array)) == 1:
        Record_Array1D_i16(array, f_dat, f_bin)
    else:
        if np.size(np.shape(array)) == 2:
            Record_Array2D_i16(array, f_dat, f_bin)
        else:
            if np.size(np.shape(array)) == 3:
                Record_Array3D_i16(array, f_dat, f_bin)
            else:
                Record_Array4D_i16(array, f_dat, f_bin)
    print(name + ".dat successfully recorded.")
    print(name + ".bin successfully recorded." + "\n")
    f_dat.close()
    f_bin.close()


def Record_Array1D_i16(array, f_dat, f_bin):
    for i1 in range(np.shape(array)[0]):
        f_dat.write(str(array[i1]) + "\n")
        a = struct.pack('h', int(array[i1]))
        f_bin.write(a)


def Record_Array2D_i16(array, f_dat, f_bin):
    for i2 in range(np.shape(array)[0]):
        for j2 in range(np.shape(array)[1]):
            f_dat.write(str(array[i2][j2]) + "\n")
            a = struct.pack('h', int(array[i2][j2]))
            f_bin.write(a)


def Record_Array3D_i16(array, f_dat, f_bin):
    for i3 in range(np.shape(array)[0]):
        for j3 in range(np.shape(array)[1]):
            for k3 in range(np.shape(array)[2]):
                f_dat.write(str(array[i3][j3][k3]) + "\n")
                a = struct.pack('h', int(array[i3][j3][k3]))
                f_bin.write(a)


def Record_Array4D_i16(array, f_dat, f_bin):
    for i4 in range(np.shape(array)[0]):
        for j4 in range(np.shape(array)[1]):
            for k4 in range(np.shape(array)[2]):
                for l4 in range(np.shape(array)[3]):
                    f_dat.write(str(array[i4][j4][k4][l4]) + "\n")
                    a = struct.pack('h', int(array[i4][j4][k4][l4]))
                    f_bin.write(a)


#  tensor recorded--int 16, remapped to fit the accelerator
def Record_Bias_i16(tensor, name, file):
    (array, fraction_part) = To_Fixed(tensor, BIT_WIDTH)
    file.write("%s = %d\n" % ("FRC_" + name.upper(), int(fraction_part)))
    print("Recording compressed bias " + name + " ...")
    f_dat = open('./record_int16_remapped/' + name + '.dat', 'w')
    f_bin = open('./record_int16_remapped/' + name + '.bin', 'wb')
    if np.size(np.shape(array)) == 1:
        Record_Array1D_i16(array, f_dat, f_bin)
    else:
        if np.size(np.shape(array)) == 2:
            Record_Array2D_i16(array, f_dat, f_bin)
        else:
            if np.size(np.shape(array)) == 3:
                Record_Array3D_i16(array, f_dat, f_bin)
            else:
                Record_Array4D_i16(array, f_dat, f_bin)
    print(name + ".dat successfully recorded.")
    print(name + ".bin successfully recorded." + "\n")
    f_dat.close()
    f_bin.close()


def Record_Weight_i16_Remap(tensor, name, file):
    (array, fraction_part) = To_Fixed(tensor, BIT_WIDTH)
    file.write("%s = %d\n" % ("FRC_" + name.upper(), int(fraction_part)))
    print("Recording compressed remapped weight " + name + " ...")
    array_remap = np.zeros(
        [np.shape(array)[3], np.shape(array)[0], np.shape(array)[1], (np.shape(array)[2] + K - 1) // K, K])
    Map_Weight_Data(array, array_remap, np.shape(array)[0], np.shape(array)[1], np.shape(array)[2], np.shape(array)[3])
    f_dat = open('./record_int16_remapped/' + name + '.dat', 'w')
    f_bin = open('./record_int16_remapped/' + name + '.bin', 'wb')
    Record_Array5D_i16(array_remap, f_dat, f_bin)
    print(name + ".dat successfully recorded.")
    print(name + ".bin successfully recorded." + "\n")
    f_dat.close()
    f_bin.close()


def Record_Array5D_i16(array, f_dat, f_bin):
    for i5 in range(np.shape(array)[0]):
        for j5 in range(np.shape(array)[1]):
            for k5 in range(np.shape(array)[2]):
                for l5 in range(np.shape(array)[3]):
                    for m5 in range(np.shape(array)[4]):
                        f_dat.write(str(array[i5][j5][k5][l5][m5]) + "\n")
                        a = struct.pack('h', int(array[i5][j5][k5][l5][m5]))
                        f_bin.write(a)


def Map_Weight_Data(kernel, array_map, k_y, k_x, ch_in, ch_out):
    for c_out in range(ch_out):
        for i in range(k_y):
            for j in range(k_x):
                for cin in range(ch_in):
                    array_map[c_out][i][j][cin // K][cin % K] = kernel[i][j][cin][c_out]
