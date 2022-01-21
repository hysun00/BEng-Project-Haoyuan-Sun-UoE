import time
from pynq import Overlay
import numpy as np
from pynq import Xlnk
import struct
from scipy.misc import imread
import cv2
from driver import *


# Read binary file
def readbinfile(filename, size):
    f = open(filename, "rb")
    z = []
    for j in range(size):
        data = f.read(4)
        data_float = struct.unpack("f", data)[0]
        z.append(data_float)
    f.close()
    z = np.array(z)
    return z


# Conv1
IN_WIDTH1 = 28
IN_HEIGHT1 = 28
IN_CH1 = 1

KERNEL_WIDTH1 = 5
KERNEL_HEIGHT1 = 5
X_STRIDE1 = 1
Y_STRIDE1 = 1

RELU_EN1 = 1
MODE1 = 1  # 0:VALID, 1:SAME
if MODE1:
    X_PADDING1 = int((KERNEL_WIDTH1 - 1) / 2)  # 2
    Y_PADDING1 = int((KERNEL_HEIGHT1 - 1) / 2)
else:
    X_PADDING1 = 0
    Y_PADDING1 = 0

OUT_CH1 = 6
OUT_WIDTH1 = int((IN_WIDTH1 + 2 * X_PADDING1 - KERNEL_WIDTH1) / X_STRIDE1 + 1)  # 28+4-5+1
OUT_HEIGHT1 = int((IN_HEIGHT1 + 2 * Y_PADDING1 - KERNEL_HEIGHT1) / Y_STRIDE1 + 1)

# Pool1
MODE11 = 2  # mode: 0:MEAN, 1:MIN, 2:MAX
IN_WIDTH11 = OUT_WIDTH1  # 28
IN_HEIGHT11 = OUT_HEIGHT1  # 28
IN_CH11 = OUT_CH1  # 6

KERNEL_WIDTH11 = 2
KERNEL_HEIGHT11 = 2

OUT_CH11 = IN_CH11  # 6
OUT_WIDTH11 = int(IN_WIDTH11 / KERNEL_WIDTH11)  # 14
OUT_HEIGHT11 = int(IN_HEIGHT11 / KERNEL_HEIGHT11)  # 14

# Conv2
IN_WIDTH2 = OUT_WIDTH11  # 14
IN_HEIGHT2 = OUT_HEIGHT11  # 14
IN_CH2 = OUT_CH11  # 6

KERNEL_WIDTH2 = 5
KERNEL_HEIGHT2 = 5
X_STRIDE2 = 1
Y_STRIDE2 = 1

RELU_EN2 = 1
MODE2 = 0  # 0:VALID, 1:SAME
if MODE2:
    X_PADDING2 = int((KERNEL_WIDTH2 - 1) / 2)  # 2
    Y_PADDING2 = int((KERNEL_HEIGHT2 - 1) / 2)  # 2
else:
    X_PADDING2 = 0
    Y_PADDING2 = 0

OUT_CH2 = 16
OUT_WIDTH2 = int((IN_WIDTH2 + 2 * X_PADDING2 - KERNEL_WIDTH2) / X_STRIDE2 + 1)  # 14+0-5+1
OUT_HEIGHT2 = int((IN_HEIGHT2 + 2 * Y_PADDING2 - KERNEL_HEIGHT2) / Y_STRIDE2 + 1)  # 14+0-5+1

# Pool2
MODE21 = 2  # mode: 0:MEAN, 1:MIN, 2:MAX
IN_WIDTH21 = OUT_WIDTH2  # 10
IN_HEIGHT21 = OUT_HEIGHT2  # 10
IN_CH21 = OUT_CH2  # 16

KERNEL_WIDTH21 = 2
KERNEL_HEIGHT21 = 2

OUT_CH21 = IN_CH21  # 16
OUT_WIDTH21 = int(IN_WIDTH21 / KERNEL_WIDTH21)  # 5
OUT_HEIGHT21 = int(IN_HEIGHT21 / KERNEL_HEIGHT21)  # 5

# Fc1
IN_WIDTH3 = OUT_WIDTH21  # 5
IN_HEIGHT3 = OUT_HEIGHT21  # 5
IN_CH3 = OUT_CH21  # 16

KERNEL_WIDTH3 = 5
KERNEL_HEIGHT3 = 5
X_STRIDE3 = 1
Y_STRIDE3 = 1

RELU_EN3 = 1
MODE3 = 0  # 0:VALID, 1:SAME
if MODE3:
    X_PADDING3 = int((KERNEL_WIDTH3 - 1 / 2))
    Y_PADDING3 = int((KERNEL_HEIGHT3 - 1) / 2)
else:
    X_PADDING3 = 0
    Y_PADDING3 = 0

OUT_CH3 = 120
OUT_WIDTH3 = int((IN_WIDTH3 + 2 * X_PADDING3 - KERNEL_WIDTH3) / X_STRIDE3 + 1)  # 5+0-5+1
OUT_HEIGHT3 = int((IN_HEIGHT3 + 2 * Y_PADDING3 - KERNEL_HEIGHT3) / Y_STRIDE3 + 1)

# Fc2
IN_WIDTH4 = OUT_WIDTH3
IN_HEIGHT4 = OUT_HEIGHT3
IN_CH4 = OUT_CH3

KERNEL_WIDTH4 = 1
KERNEL_HEIGHT4 = 1
X_STRIDE4 = 1
Y_STRIDE4 = 1

RELU_EN4 = 1
MODE4 = 0  # 0:VALID, 1:SAME
if MODE4:
    X_PADDING4 = int((KERNEL_WIDTH4 - 1 / 2))
    Y_PADDING4 = int((KERNEL_HEIGHT4 - 1) / 2)
else:
    X_PADDING4 = 0
    Y_PADDING4 = 0

OUT_CH4 = 84
OUT_WIDTH4 = int((IN_WIDTH4 + 2 * X_PADDING4 - KERNEL_WIDTH4) / X_STRIDE4 + 1)
OUT_HEIGHT4 = int((IN_HEIGHT4 + 2 * Y_PADDING4 - KERNEL_HEIGHT4) / Y_STRIDE4 + 1)

# Fc3
IN_WIDTH5 = OUT_WIDTH4
IN_HEIGHT5 = OUT_HEIGHT4
IN_CH5 = OUT_CH4

KERNEL_WIDTH5 = 1
KERNEL_HEIGHT5 = 1
X_STRIDE5 = 1
Y_STRIDE5 = 1

RELU_EN5 = 1
MODE5 = 0  # 0:VALID, 1:SAME
if MODE5:
    X_PADDING5 = int((KERNEL_WIDTH5 - 1 / 2))
    Y_PADDING5 = int((KERNEL_HEIGHT5 - 1) / 2)
else:
    X_PADDING5 = 0
    Y_PADDING5 = 0

OUT_CH5 = 10
OUT_WIDTH5 = int((IN_WIDTH5 + 2 * X_PADDING5 - KERNEL_WIDTH5) / X_STRIDE5 + 1)
OUT_HEIGHT5 = int((IN_HEIGHT5 + 2 * Y_PADDING5 - KERNEL_HEIGHT5) / Y_STRIDE5 + 1)

xlnk = Xlnk()

ol = Overlay("ai.bit")
ol.download()
conv = ol.Conv_0
pool = ol.Pool_0
print("Overlay successfully downloaded.")

# input image
image = xlnk.cma_array(shape=(IN_HEIGHT1, IN_WIDTH1, IN_CH1), cacheable=0, dtype=np.float32)

# conv1 and pool1
W_conv1 = xlnk.cma_array(shape=(KERNEL_HEIGHT1, KERNEL_WIDTH1, IN_CH1, OUT_CH1), cacheable=0, dtype=np.float32)
b_conv1 = xlnk.cma_array(shape=OUT_CH1, cacheable=0, dtype=np.float32)
conv1_ofm = xlnk.cma_array(shape=(OUT_HEIGHT1, OUT_WIDTH1, OUT_CH1), cacheable=0, dtype=np.float32)
pool1_ofm = xlnk.cma_array(shape=(OUT_HEIGHT11, OUT_WIDTH11, OUT_CH11), cacheable=0, dtype=np.float32)

# conv2 and pool2
W_conv2 = xlnk.cma_array(shape=(KERNEL_HEIGHT2, KERNEL_WIDTH2, IN_CH2, OUT_CH2), cacheable=0, dtype=np.float32)
b_conv2 = xlnk.cma_array(shape=OUT_CH2, cacheable=0, dtype=np.float32)
conv2_ofm = xlnk.cma_array(shape=(OUT_HEIGHT2, OUT_WIDTH2, OUT_CH2), cacheable=0, dtype=np.float32)
pool2_ofm = xlnk.cma_array(shape=(OUT_HEIGHT21, OUT_WIDTH21, OUT_CH21), cacheable=0, dtype=np.float32)

# fc1
W_fc1 = xlnk.cma_array(shape=(KERNEL_HEIGHT3, KERNEL_WIDTH3, IN_CH3, OUT_CH3), cacheable=0, dtype=np.float32)
b_fc1 = xlnk.cma_array(shape=OUT_CH3, cacheable=0, dtype=np.float32)
fc1_ofm = xlnk.cma_array(shape=(OUT_HEIGHT3, OUT_WIDTH3, OUT_CH3), cacheable=0, dtype=np.float32)

# fc2
W_fc2 = xlnk.cma_array(shape=(KERNEL_HEIGHT4, KERNEL_WIDTH4, IN_CH4, OUT_CH4), cacheable=0, dtype=np.float32)
b_fc2 = xlnk.cma_array(shape=OUT_CH4, cacheable=0, dtype=np.float32)
fc2_ofm = xlnk.cma_array(shape=(OUT_HEIGHT4, OUT_WIDTH4, OUT_CH4), cacheable=0, dtype=np.float32)

# fc3
W_fc3 = xlnk.cma_array(shape=(KERNEL_HEIGHT5, KERNEL_WIDTH5, IN_CH5, OUT_CH5), cacheable=0, dtype=np.float32)
b_fc3 = xlnk.cma_array(shape=OUT_CH5, cacheable=0, dtype=np.float32)
fc3_ofv_10 = xlnk.cma_array(shape=(OUT_HEIGHT5, OUT_WIDTH5, OUT_CH5), cacheable=0, dtype=np.float32)

# Initialize W, bias
w_conv1 = readbinfile("data/W_conv1.bin", KERNEL_HEIGHT1 * KERNEL_WIDTH1 * IN_CH1 * OUT_CH1)
w_conv1 = w_conv1.reshape((KERNEL_HEIGHT1, KERNEL_WIDTH1, IN_CH1, OUT_CH1))
for i in range(KERNEL_HEIGHT1):
    for j in range(KERNEL_WIDTH1):
        for k in range(IN_CH1):
            for l in range(OUT_CH1):
                W_conv1[i][j][k][l] = w_conv1[i][j][k][l]
B_conv1 = readbinfile("data/b_conv1.bin", OUT_CH1)
for i in range(OUT_CH1):
    b_conv1[i] = B_conv1[i]

w_conv2 = readbinfile("data/W_conv2.bin", KERNEL_HEIGHT2 * KERNEL_WIDTH2 * IN_CH2 * OUT_CH2)
w_conv2 = w_conv2.reshape((KERNEL_HEIGHT2, KERNEL_WIDTH2, IN_CH2, OUT_CH2))
for i in range(KERNEL_HEIGHT2):
    for j in range(KERNEL_WIDTH2):
        for k in range(IN_CH2):
            for l in range(OUT_CH2):
                W_conv2[i][j][k][l] = w_conv2[i][j][k][l]
B_conv2 = readbinfile("data/b_conv2.bin", OUT_CH2)
for i in range(OUT_CH2):
    b_conv2[i] = B_conv2[i]

w_fc1 = readbinfile("data/W_fc1.bin", KERNEL_HEIGHT3 * KERNEL_WIDTH3 * IN_CH3 * OUT_CH3)
w_fc1 = w_fc1.reshape((KERNEL_HEIGHT3, KERNEL_WIDTH3, IN_CH3, OUT_CH3))
for i in range(KERNEL_HEIGHT3):
    for j in range(KERNEL_WIDTH3):
        for k in range(IN_CH3):
            for l in range(OUT_CH3):
                W_fc1[i][j][k][l] = w_fc1[i][j][k][l]
B_fc1 = readbinfile("data/b_fc1.bin", OUT_CH3)
for i in range(OUT_CH3):
    b_fc1[i] = B_fc1[i]

w_fc2 = readbinfile("data/W_fc2.bin", KERNEL_HEIGHT4 * KERNEL_WIDTH4 * IN_CH4 * OUT_CH4)
w_fc2 = w_fc2.reshape((KERNEL_HEIGHT4, KERNEL_WIDTH4, IN_CH4, OUT_CH4))
for i in range(KERNEL_HEIGHT4):
    for j in range(KERNEL_WIDTH4):
        for k in range(IN_CH4):
            for l in range(OUT_CH4):
                W_fc2[i][j][k][l] = w_fc2[i][j][k][l]
B_fc2 = readbinfile("data/b_fc2.bin", OUT_CH4)
for i in range(OUT_CH4):
    b_fc2[i] = B_fc2[i]

w_fc3 = readbinfile("data/W_fc3.bin", KERNEL_HEIGHT5 * KERNEL_WIDTH5 * IN_CH5 * OUT_CH5)
w_fc3 = w_fc3.reshape((KERNEL_HEIGHT5, KERNEL_WIDTH5, IN_CH5, OUT_CH5))
for i in range(KERNEL_HEIGHT5):
    for j in range(KERNEL_WIDTH5):
        for k in range(IN_CH5):
            for l in range(OUT_CH5):
                W_fc3[i][j][k][l] = w_fc3[i][j][k][l]
B_fc3 = readbinfile("data/b_fc3.bin", OUT_CH5)
for i in range(OUT_CH5):
    b_fc3[i] = B_fc3[i]

print("Initialisation finished." + "\n")

while 1:
    while 1:
        g = input("Enter to continue")
        break
    image1 = cv2.imread("data/1.jpg", cv2.IMREAD_GRAYSCALE).astype(np.float32)
    print("Reading image.")
    # image1=image1.reshape((IN_HEIGHT1,IN_WIDTH1,IN_CH1))

    for i in range(IN_HEIGHT1):
        for j in range(IN_WIDTH1):
            for k in range(IN_CH1):
                image[i][j][k] = (255 - image1[i][j]) / 255
    print("Image successfully read.")

    # Timer Start
    start_time = time.process_time()

    # conv1 and pool1
    RunConv(conv, KERNEL_WIDTH1, KERNEL_HEIGHT1, X_STRIDE1, Y_STRIDE1, MODE1, RELU_EN1,
            image,
            W_conv1, b_conv1,
            conv1_ofm)

    RunPool(pool, KERNEL_WIDTH11, KERNEL_HEIGHT11, MODE11,
            conv1_ofm,
            pool1_ofm)

    # conv2 and pool2
    RunConv(conv, KERNEL_WIDTH2, KERNEL_HEIGHT2, X_STRIDE2, Y_STRIDE2, MODE2, RELU_EN2,
            pool1_ofm,
            W_conv2, b_conv2,
            conv2_ofm)

    RunPool(pool, KERNEL_WIDTH21, KERNEL_HEIGHT21, MODE21,
            conv2_ofm,
            pool2_ofm)
    # fc1
    RunConv(conv, KERNEL_WIDTH3, KERNEL_HEIGHT3, X_STRIDE3, Y_STRIDE3, MODE3, RELU_EN3,
            pool2_ofm,
            W_fc1, b_fc1,
            fc1_ofm)
    # fc2
    RunConv(conv, KERNEL_WIDTH4, KERNEL_HEIGHT4, X_STRIDE4, Y_STRIDE4, MODE4, RELU_EN4,
            fc1_ofm,
            W_fc2, b_fc2,
            fc2_ofm)
    # fc3
    RunConv(conv, KERNEL_WIDTH5, KERNEL_HEIGHT5, X_STRIDE5, Y_STRIDE5, MODE5, RELU_EN5,
            fc2_ofm,
            W_fc3, b_fc3,
            fc3_ofv_10)

    # Timer End
    end_time = time.process_time()

    print("FPGA acceleration finished")

    MAX = fc3_ofv_10[0][0][0]
    result = 0
    for i in range(1, OUT_CH5):
        if fc3_ofv_10[0][0][i] > MAX:
            MAX = fc3_ofv_10[0][0][i]
            result = i
    print("Inference done.The number you wrote is " + str(result) + ". Elapsed inference time:" + str(
        1000 * end_time - 1000 * start_time) + "ms" + "\n")
