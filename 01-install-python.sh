#!/bin/bash
set -eu
set -x

sudo apt-get update --fix-missing
sudo apt-get install libssl1.0-dev libhdf5-dev
if [ ! -f Python-3.7.9.tgz ]; then
	wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
fi
if [ ! -d Python-3.7.9 ]; then
	tar -xvzf Python-3.7.9.tgz
fi
cd Python-3.7.9
./configure --enable-loadable-sqlite-extensions --enable-optimizations
make -j4 build_all
sudo make -j4 install
sudo ldconfig
