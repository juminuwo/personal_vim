#!/bin/bash
BASEDIR=$(cd $(dirname $0) && pwd)
$BASEDIR

cp ~/.vimrc $BASEDIR
cp -r ~/.vim $BASEDIR
