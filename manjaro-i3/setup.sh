#!/bin/bash

echo ""
echo " === Update and install applications ==="
echo ""

./setup-applications.sh

echo ""
echo " === Install watchman ==="
echo ""

../general/setup-watchman.sh

echo ""
echo " === Install Onivim2 ==="
echo ""

cd ../general/
./install-omivim2.sh

echo ""
echo " === Add and append to dot files ==="
echo ""

./setup-dot-files.sh
. ~/.bashrc
echo ""
echo "!!! You might need to re-source ~/.bashrc"

echo ""
echo " === Setup system config ==="
echo ""

cd ../manjaro-i3/
./setup-system.sh

echo ""
echo " === Setup bluetooth ==="
echo ""

./setup-bluetooth.sh

