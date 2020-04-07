#!/bin/bash

cat ./.bashrc >> ~/.bashrc
cat ./.bash_aliases >> ~/.bash_aliases
cp ./.vimrc ~
cp ./.gitignore ~
mkdir -p ~/.vim/autoload ~/.vim/plugged
cp ./plug.vim ~/.vim/autoload/

