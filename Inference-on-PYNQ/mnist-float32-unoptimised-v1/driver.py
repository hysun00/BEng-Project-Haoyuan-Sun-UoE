import numpy as np
import struct


# Conv API
def RunConv(conv, Kx, Ky, Sx, Sy, mode, relu_en, feature_in, W, bias, feature_out):
    conv.write(0x10, feature_in.shape[2])
    conv.write(0x18, feature_in.shape[0])
    conv.write(0x20, feature_in.shape[1])
    conv.write(0x28, feature_out.shape[2])
    conv.write(0x30, Kx)
    conv.write(0x38, Ky)
    conv.write(0x40, Sx)
    conv.write(0x48, Sy)
    conv.write(0x50, mode)
    conv.write(0x58, relu_en)
    conv.write(0x60, feature_in.physical_address)
    conv.write(0x68, W.physical_address)
    conv.write(0x70, bias.physical_address)
    conv.write(0x78, feature_out.physical_address)
    conv.write(0, (conv.read(0) & 0x80) | 0x01)
    tp = conv.read(0)
    while not ((tp >> 1) & 0x1):
        tp = conv.read(0)
    # print(tp);


# Pool API
def RunPool(pool, Kx, Ky, mode, feature_in, feature_out):
    pool.write(0x10, feature_in.shape[2])
    pool.write(0x18, feature_in.shape[0])
    pool.write(0x20, feature_in.shape[1])
    pool.write(0x28, Kx)
    pool.write(0x30, Ky)
    pool.write(0x38, mode)
    pool.write(0x40, feature_in.physical_address)
    pool.write(0x48, feature_out.physical_address)
    pool.write(0, (pool.read(0) & 0x80) | 0x01)
    while not ((pool.read(0) >> 1) & 0x1):
        pass
