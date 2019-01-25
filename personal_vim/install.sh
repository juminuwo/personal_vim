#!/bin/bash
BASEDIR=$(dirname "$0")

mv ~/.vimrc ~/.vimrc_old
cp $BASEDIR/.vimrc ~/.vimrc
apt install neovim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim
