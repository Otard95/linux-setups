#!/bin/bash

printf "Enter your timezone location: [Europe/Oslo] "
read tz

if [ -z "$tz" ]; then
  timezone="Europe/Oslo"
else
  timezone="$tz"
fi

sudo timedatectl set-ntp 1
sudo timedatectl set-timezone "$timezone"

sudo cp ./09-timezone /etc/NetworkManager/dispatcher.d/
sudo sed -iE -e="s/Europe\/Oslo/$timezone/" /etc/NetworkManager/dispatcher.d/

sudo cp ./xrandr-settings.desktop /etc/xdg/autostart

