#!/bin/bash

sudo pacman -S autoconf automake libtool # verify libssl-dev

git clone https://github.com/facebook/watchman.git -b v4.9.0 --depth 1
cd watchman 
./autogen.sh
./configure --with-python=/usr/bin/python --with-pcre=/usr/bin/pcre-config
make
sudo make install

cd ..
rm -r watchman/

