#!/bin/bash
sudo apt-get update
sudo apt-get install expect curl vim-gtk build-essential cmake python3-dev -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
vim +PluginInstall +qall
