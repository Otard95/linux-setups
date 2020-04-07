#!/bin/bash

sudo timedatectl set-ntp 1
sudo timedatectl set-timezone "$timezone"

sudo cp ./09-timezone /etc/NetworkManager/dispatcher.d/

sudo cp ./xrandr-settings.desktop /etc/xdg/autostart

