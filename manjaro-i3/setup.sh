#!/bin/bash

echo ""
echo " === Update and install applications ==="
echo ""

./setup_applications.sh

echo ""
echo " === Install Onivim2 ==="
echo ""

../general/install-omivim2.sh

echo ""
echo " === Add and append to dot files ==="
echo ""

../general/setup-dot-files.sh
. ~/.bashrc
echo ""
echo "!!! You might need to re-source ~/.bashrc"

echo ""
echo " === Setup system config ==="
echo ""

./setup-system.sh

echo ""
echo " === Setup bluetooth ==="
echo ""

./setup-bluetooth.sh

