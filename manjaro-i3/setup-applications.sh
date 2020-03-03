#!/bin/bash

sudo pacman -Syu

packages=(
"chromium" \
"code" \ 
"nodejs" \ 
"npm" \ 
"java-openjdk-bin" \
)

echo "Packages to be installed:"
echo "${packages[@]}"
printf "Do you want to procede with the install? [Y/n] "

read ans

case "$ans" in
  "n"|"N"|"no"|"NO"|"No")
    ;;
  *)
    echo ""
    echo ""
    sudo pacman -S "${packages[@]}"
    ;;
esac

