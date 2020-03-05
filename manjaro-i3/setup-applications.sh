#!/bin/bash

sudo pacman -Syu

packages=(
"chromium" \
"code" \
"nodejs" \
"npm" \
"jre-openjdk" \
"jdk-openjdk" \
"gcc" \
)

echo ""
echo "== Packages to be installed:"
for name in "${packages[@]}"
do
  echo "  $name"
done
printf "Do you want to procede with the install? [Y/n] "

read ans

case "$ans" in
  "n"|"N"|"no"|"NO"|"No")
    ;;
  *)
    echo ""
    echo ""
    sudo pacman -S ${packages[@]}
    ;;
esac

