#!/bin/bash

echo ""
echo " === Update and install applications ==="
echo ""

./setup-applications.sh

echo ""
echo " === Add and append to dot files ==="
echo ""

cd ../general/
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

