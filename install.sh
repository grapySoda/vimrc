#!/bin/bash
sudo apt-get update
sudo apt-get install expect curl vim-gtk build-essential cmake python3-dev powerline -y

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.config/fontconfig/conf.d
mkdir ~/.fonts

mv PowerlineSymbols.otf ~/.fonts
fc-cache -vf ~/.fonts
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./.vimrc ~/
vim -E -s -u "${HOME}/.vimrc" +PlugInstall +qall
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
