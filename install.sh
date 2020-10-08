#!/bin/bash
sudo apt-get update
sudo apt-get install expect curl vim-gtk build-essential cmake python3-dev -y
clone git clone https://github.com/powerline/fonts.git --depth=1 ~/fonts
~/fonts/install.sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
vim -E -s -u "${HOME}/.vimrc" +PlugInstall +qall
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
