#!/bin/bash

sudo timedatectl set-ntp 1
sudo timedatectl set-timezone "Europe/Oslo"

sudo cp ./09-timezone /etc/NetworkManager/dispatcher.d/

