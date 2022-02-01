# Welcome to the LeNet-5 CNN Model



## What's included

Here you have four .py files, they are the components of the LeNet-5 model.

The .txt file is the file where the accuracy of my LeNet-5 CNN is recorded.

The MNIST_data folder stores the MNIST dataset for training and testing the CNN.



## The structure you need to understand

The mnist_py.py is the top-level module you need to run. In minist_py.py, I built a LeNet-5 model and tested its accuracy. With proper training process, you will get the weights and biases. These parameters are 32-bit floating numbers by default.

In recorder.py, I designed the functions recording the weights and biases of CNN in the desired shape. More importantly, I designed the functions mapping the 32-bit floating (f32) numbers into a 16-bit integer (int16) and a very short integer indicating the number of binary fraction bits.

In export.py is the function export() defined. This function calls the functions defined in recorder.py to reshape and/or compress the f32 data and/or record the precision of the f32 data. It is called at the bottom of the mnist_py.py so that the information and parameters you need can be exported to the correct folder when the training is finished.



## Tensorflow, Anaconda environment and PyCharm IDE

The CNN is built with tensorflow framework. Before running the programme provided here, you need to set up the environment properly. I don't recommend you directly install tensorflow on you PC with pip or pip3 considering the awful path issues. Instead, it is more popular to install tensorflow with conda. To do this, you should first install anaconda environment on your PC and then add the tensorflow as a base in your anaconda environment. A detailed instruction can be found here https://docs.anaconda.com/anaconda/user-guide/tasks/tensorflow/. Please note that you have two options with tensorflow in anaconda, CPU version and GPU version. Make sure you set up the one that fits your PC.

PyCharm is an excellent python IDE which has gained high reputation from both the industry and academia. You will find the programming work more professional when you use anaconda in PyCharm. More information can be found at https://docs.anaconda.com/anaconda/user-guide/tasks/pycharm/



## Data Compression



