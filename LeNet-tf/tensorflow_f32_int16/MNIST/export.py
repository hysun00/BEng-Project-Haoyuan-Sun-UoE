from recorder import *


def export(mnist, keep_prob, y_,
           accuracy, x,
           W_conv1, b_conv1, conv1_ofm, pool1_ofm,
           W_conv2, b_conv2, conv2_ofm, pool2_ofm,
           W_fc1, b_fc1, fc1_ofm,
           W_fc2, b_fc2, fc2_ofm,
           W_fc3, b_fc3, fc3_ofv):
    print("=================================================")

    print("Recording accuracy...")
    f_acc = open('lenet5_accuracy.txt', 'w')
    f_acc.write("The accuracy of the LeNet-5 on MNIST is recorded below." + "\n" +
                "%g" % accuracy.eval(feed_dict={x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}))

    print("=================================================")
    print("Recording uncompressed parameters...")

    # Output uncompressed, float32, parameters as .dat and .bin files
    Record_Tensor_f32(W_conv1, "W_conv1")
    Record_Tensor_f32(b_conv1, "b_conv1")

    Record_Tensor_f32(W_conv2, "W_conv2")
    Record_Tensor_f32(b_conv2, "b_conv2")

    Record_Tensor_f32(W_fc1, "W_fc1")
    Record_Tensor_f32(b_fc1, "b_fc1")

    Record_Tensor_f32(W_fc2, "W_fc2")
    Record_Tensor_f32(b_fc2, "b_fc2")

    Record_Tensor_f32(W_fc3, "W_fc3")
    Record_Tensor_f32(b_fc3, "b_fc3")
    print("=================================================")
    print("Recording compressed parameters...")
    f1 = open('./record_int16/FRC_WB.py', 'w')
    f1.write("Numbers of fraction bits are given below." + "\n")

    # Output compressed, int16, parameters as .dat and .bin files and record the fraction bits
    Record_Tensor_i16(W_conv1, "W_conv1", f1)
    Record_Tensor_i16(b_conv1, "b_conv1", f1)

    Record_Tensor_i16(W_conv2, "W_conv2", f1)
    Record_Tensor_i16(b_conv2, "b_conv2", f1)

    Record_Tensor_i16(W_fc1, "W_fc1", f1)
    Record_Tensor_i16(b_fc1, "b_fc1", f1)

    Record_Tensor_i16(W_fc2, "W_fc2", f1)
    Record_Tensor_i16(b_fc2, "b_fc2", f1)

    Record_Tensor_i16(W_fc3, "W_fc3", f1)
    Record_Tensor_i16(b_fc3, "b_fc3", f1)

    f1.close()
    print("=================================================")
    print("Recording remapped compressed parameters...")
    f2 = open('./record_int16_remapped/FRC_WB.py', 'w')
    f2_fm = open('./record_int16_remapped/FRC_FM.py', 'w')
    f2.write("# Numbers of binary fraction bits of weights and biases are given below." + "\n")
    f2_fm.write("# Numbers of binary fraction bits of feature maps are given below." + "\n")

    # Output compressed parameters as .dat and .bin files and record the fraction bits
    # conv1 and pool1
    Get_Feature_Fraction_Part(x, "IMG",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)
    Record_Weight_i16_Remap(W_conv1, "W_conv1", f2)
    Record_Bias_i16(tf.reshape(b_conv1, [1, 1, 1, 6]), "b_conv1", f2)

    Get_Feature_Fraction_Part(conv1_ofm, "conv1_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)
    Get_Feature_Fraction_Part(pool1_ofm, "pool1_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)

    # conv2 and pool2
    Record_Weight_i16_Remap(W_conv2, "W_conv2", f2)
    Record_Bias_i16(tf.reshape(b_conv2, [1, 1, 1, 16]), "b_conv2", f2)

    Get_Feature_Fraction_Part(conv2_ofm, "conv2_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)
    Get_Feature_Fraction_Part(pool2_ofm, "pool2_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)

    # fc1
    Record_Weight_i16_Remap(tf.reshape(W_fc1, [5, 5, 16, 120]), "W_fc1", f2)
    Record_Bias_i16(b_fc1, "b_fc1", f2)

    Get_Feature_Fraction_Part(fc1_ofm, "fc1_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)

    # fc2
    Record_Weight_i16_Remap(tf.reshape(W_fc2, [1, 1, 120, 84]), "W_fc2", f2)
    Record_Bias_i16(b_fc2, "b_fc2", f2)

    Get_Feature_Fraction_Part(fc2_ofm, "fc2_ofm",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)

    # fc3
    Record_Weight_i16_Remap(tf.reshape(W_fc3, [1, 1, 84, 10]), "W_fc3", f2)
    Record_Bias_i16(b_fc3, "b_fc3", f2)

    Get_Feature_Fraction_Part(fc3_ofv, "fc3_ofv",
                              {x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}, f2_fm)

    f2.close()
    f2_fm.close()
    print("=================================================")
