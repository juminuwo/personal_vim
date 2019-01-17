#!/bin/bash

BASEDIR=$(dirname "$0")

mv ~/.vimrc ~/.vimrc_old
mv -r ~/.vim ~/.vim_old
cp $BASEDIR/.vim ~/.vimrc
cp -r $BASEDIR/.vim ~/.vim
