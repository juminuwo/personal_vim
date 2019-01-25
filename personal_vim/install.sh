#!/bin/bash
BASEDIR=$(dirname "$0")

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc_old
fi
cp $BASEDIR/.vimrc ~/.vimrc
apt install neovim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim
vim +PluginInstall +qall
