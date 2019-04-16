#!/bin/bash
BASEDIR=$(dirname "$0")

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc_old
fi
cp $BASEDIR/.vimrc ~/.vimrc
mkdir ~/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


#apt install neovim
#echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
#let &packpath = &runtimepath
#source ~/.vimrc" > ~/.config/nvim/init.vim

if [ -f ~/.tmux.conf ]; then
	touch ~/.tmux.conf
fi
echo "set -sg escape-time 0" >> ~/.tmux.conf
