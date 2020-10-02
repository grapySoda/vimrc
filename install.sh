#!/bin/bash
sudo apt-get install curl vim-gtk build-essential cmake python3-dev -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
