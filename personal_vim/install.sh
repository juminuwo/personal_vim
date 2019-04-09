#!/bin/bash
BASEDIR=$(dirname "$0")

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc_old
fi
cp $BASEDIR/.vimrc ~/.vimrc
#apt install neovim
mkdir ~/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
#let &packpath = &runtimepath
#source ~/.vimrc" > ~/.config/nvim/init.vim
vim +PluginInstall +qall
