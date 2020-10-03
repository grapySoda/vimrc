#!/bin/bash
sudo apt-get update
sudo apt-get install expect curl vim-gtk build-essential cmake python3-dev fonts-powerline -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
vim -E -s -u "${HOME}/.vimrc" +PlugInstall +qall
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
