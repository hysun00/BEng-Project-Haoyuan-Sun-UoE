# -*- coding: utf-8 -*-
import input_data
import numpy as np
import tensorflow.compat.v1 as tf
from export import *

tf.disable_v2_behavior()
mnist = input_data.read_data_sets('MNIST_data', one_hot=True)

sess = tf.InteractiveSession()

# Training data set
x = tf.placeholder("float", shape=[None, 784])
# Data labels
y_ = tf.placeholder("float", shape=[None, 10])
# x reshaped into a 4th-order tensor.
# From left to right they are:the index, height, weight and no. of channels of a sample
x_image = tf.reshape(x, [-1, 28, 28, 1])

# 1st conv layer
# kernel size=5*5, channel no.=1, filter no.(i.e., output channel no.)=6
# 28*28*1->28*28*6
W_conv1 = tf.get_variable("W_conv1", [5, 5, 1, 6], initializer=tf.truncated_normal_initializer(stddev=0.1))
b_conv1 = tf.get_variable("b_conv1", [6], initializer=tf.constant_initializer(0.0))
# stride=1, zero padding enabled
conv1_ofm = tf.nn.conv2d(x_image, W_conv1, strides=[1, 1, 1, 1], padding='SAME')
relu1_ofm = tf.nn.relu(tf.nn.bias_add(conv1_ofm, b_conv1))

# 1st pooling layer
# kernel size=2, stride=2
# 28*28*6->14*14*6
pool1_ofm = tf.nn.max_pool(relu1_ofm, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')

# 2nd conv layer
# kernel size=5*5, channel no.=6, filter no.(i.e., output channel no.)=16
# 14*14*6->10*10*16
W_conv2 = tf.get_variable("W_conv2", [5, 5, 6, 16], initializer=tf.truncated_normal_initializer(stddev=0.1))
b_conv2 = tf.get_variable("b_conv2", [16], initializer=tf.constant_initializer(0.0))
# stride=1, zero-padding disabled
conv2_ofm = tf.nn.conv2d(pool1_ofm, W_conv2, strides=[1, 1, 1, 1], padding='VALID')
relu2_ofm = tf.nn.relu(tf.nn.bias_add(conv2_ofm, b_conv2))

# 2nd pooling layer
# kernel size=2, stride=2
# 10*10*16->5*5*16
pool2_ofm = tf.nn.max_pool(relu2_ofm, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')

# 1st fully connected layer
# Input feature 3rd-order tensor flattened into a 400-dimensional vector, 5*5*16=400
# 5*5*16->120
W_fc1 = tf.get_variable("W_fc1", [5 * 5 * 16, 120], initializer=tf.truncated_normal_initializer(stddev=0.1))
b_fc1 = tf.get_variable("b_fc1", [120], initializer=tf.constant_initializer(0.1))
pool2_vector = tf.reshape(pool2_ofm, [-1, 5 * 5 * 16])
fc1_ofm = tf.nn.relu(tf.matmul(pool2_vector, W_fc1) + b_fc1)
# Dropout layer added to contain over-fitting
keep_prob = tf.placeholder(tf.float32)
fc1_dropout = tf.nn.dropout(fc1_ofm, keep_prob)

# 2nd fully connected layer
# 120->84
W_fc2 = tf.get_variable("W_fc2", [120, 84], initializer=tf.truncated_normal_initializer(stddev=0.1))
b_fc2 = tf.get_variable("b_fc2", [84], initializer=tf.constant_initializer(0.1))
fc2_ofm = tf.matmul(fc1_dropout, W_fc2) + b_fc2
# Dropout layer added to contain over-fitting
fc2_dropout = tf.nn.dropout(fc2_ofm, keep_prob)

# 3rd fully connected layer/Gaussian layer
# 84->10
W_fc3 = tf.get_variable("W_fc3", [84, 10], initializer=tf.truncated_normal_initializer(stddev=0.1))
b_fc3 = tf.get_variable("b_fc3", [10], initializer=tf.constant_initializer(0.1))
fc3_ofv = tf.matmul(fc2_dropout, W_fc3) + b_fc3

# Output softmax
y_conv = tf.nn.softmax(fc3_ofv)

# loss Function
cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y_conv), reduction_indices=[1]))

# Select an optimiser to minimise the loss. Backward propagation
train_step = tf.train.AdamOptimizer(1e-4).minimize(cross_entropy)

# y is the probability of being a certain number
correct_prediction = tf.equal(tf.argmax(y_conv, 1), tf.argmax(y_, 1))

# Calculate accuracy with mean value
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

# Start training
sess.run(tf.global_variables_initializer())
for i in range(15000):
    batch = mnist.train.next_batch(50)
    if i % 200 == 0:
        # Dropout disabled when evaluating accuracy
        train_accuracy = accuracy.eval(feed_dict={x: batch[0], y_: batch[1], keep_prob: 1.0})
        # 50% Dropout in training
        print("step %d, training accuracy %g" % (i, train_accuracy))
    train_step.run(feed_dict={x: batch[0], y_: batch[1], keep_prob: 0.5})

# Test accuracy
print("test accuracy %g" % accuracy.eval(feed_dict={x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0}))


# Export all parameters we need and the related information
export(mnist, keep_prob, y_,
       accuracy, x,
       W_conv1, b_conv1, conv1_ofm, pool1_ofm,
       W_conv2, b_conv2, conv2_ofm, pool2_ofm,
       W_fc1, b_fc1, fc1_ofm,
       W_fc2, b_fc2, fc2_ofm,
       W_fc3, b_fc3, fc3_ofv)

sess.close()
