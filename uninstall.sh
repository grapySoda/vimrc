#!/bin/bash
sudo apt-get autoremove vim-gtk -y
~/fonts/uninstall.sh
rm -rf ~/fonts
rm -rf ~/.vim/
rm -f ~/.vimrc
