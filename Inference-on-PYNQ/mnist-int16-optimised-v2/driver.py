from pynq import Overlay
import numpy as np
from pynq import Xlnk
import struct

K = 8


# Read binary file
def readbinfile(filename, size):
    f = open(filename, "rb")
    z = []
    for j in range(size):
        dat = f.read(2)
        data_int = struct.unpack("h", dat)[0]
        z.append(data_int)
    f.close()
    z = np.array(z)
    return z


def Load_Weight_From_File(weight, file):
    with open(file, 'rb') as fp:
        for i5 in range(np.shape(weight)[0]):
            for j5 in range(np.shape(weight)[1]):
                for k5 in range(np.shape(weight)[2]):
                    for l5 in range(np.shape(weight)[3]):
                        for m5 in range(np.shape(weight)[4]):
                            dat = fp.read(2)
                            a = struct.unpack("h", dat)
                            weight[i5][j5][k5][l5][m5] = a[0]


# API for pool ip
def RunPool(pool, dma, ch, kx, ky, feature_in, feature_out):
    pool.write(0x10, (ch + K - 1) // K)
    pool.write(0x18, feature_in.shape[1])
    pool.write(0x20, feature_in.shape[2])
    pool.write(0x28, feature_out.shape[1])
    pool.write(0x30, feature_out.shape[2])
    pool.write(0x38, kx)
    pool.write(0x40, ky)
    print("pool ip start");
    pool.write(0, (pool.read(0) & 0x90) | 0x01)  # start pool IP
    dma.recvchannel.transfer(feature_out)
    dma.sendchannel.transfer(feature_in)
    dma.sendchannel.wait()
    # print("send done")
    dma.recvchannel.wait()
    # print("recv done") 
    tp = pool.read(0)
    while not ((tp >> 1)&0x01):
        tp = pool.read(0)
    print("pool ip done")


# API for conv ip
def RunConv(conv, chin, chout, 
            kx, ky, sx, sy, 
            mode, relu_en,
            feature_in, feature_in_precision,
            bias, bias_precision,
            weight, weight_precision,
            feature_out, feature_out_precision):

    conv.write(0x10, chin)
    conv.write(0x18, feature_in.shape[1])
    conv.write(0x20, feature_in.shape[2])
    conv.write(0x28, chout)
    conv.write(0x30, kx)
    conv.write(0x38, ky)
    conv.write(0x40, sx)
    conv.write(0x48, sy)
    conv.write(0x50, mode)
    conv.write(0x58, relu_en)
    conv.write(0x60, feature_in.physical_address)
    conv.write(0x68, feature_in_precision)
    conv.write(0x70, weight.physical_address)
    conv.write(0x78, weight_precision)
    conv.write(0x80, bias.physical_address)
    conv.write(0x88, bias_precision)
    conv.write(0x90, feature_out.physical_address)
    conv.write(0x98, feature_out_precision)
    print("conv ip start")
    conv.write(0, (conv.read(0) & 0x90) | 0x01)  # start pool IP
    # set the done bit
    tp = conv.read(0)
    while not ((tp >> 1) & 0x01):
        tp = conv.read(0)
    print("conv ip done")
