#!/bin/bash
sudo apt-get autoremove vim-gtk -y
~/fonts/uninstall.sh
rm -rf ~/.config/fontconfig
rm -rf ~/.fonts
rm -rf ~/.vim/
rm -f ~/.vimrc
