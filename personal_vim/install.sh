#!/bin/bash

BASEDIR=$(dirname "$0")

mv ~/.vimrc ~/.vimrc_old
cp $BASEDIR/.vim ~/.vimrc
