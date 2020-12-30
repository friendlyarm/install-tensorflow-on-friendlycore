## Installing Tensorflow 2.4.0 on FriendlyCore/FriendlyDesktop
Here are the packages and utilities your system will have after you follow the instructions in this tutorial:
* Tensorflow 2.4.0
* Python 3.7.9

## Currently supported boards 
* RK3399  
NanoPC T4  
NanoPC M4  
NanoPC NEO4  
  
## Installation 
### Step1 - Clone this repository on target board
```
git clone https://github.com/friendlyarm/install-tensorflow-on-friendlycore.git --depth 1 -b master
```
### Step2 - Build python3.7.9 from source
```
cd install-tensorflow-on-friendlycore
./01-install-python.sh
```

### Step3 - Install tensorflow 2.4.0-aarch64
```
./02-install-tensorflow.sh
```

### Step4 - Check tensorflow 2.4.0 installation
```
pi@NanoPC-T4:~$ python3
Python 3.7.9 (default, Dec 30 2020, 03:43:55)
[GCC 7.5.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import tensorflow as tf
>>> tf.version.VERSION
'2.4.0'
>>>
```

## Simple sample
```
cd examples
python3 tensorflow-demo.py
```

