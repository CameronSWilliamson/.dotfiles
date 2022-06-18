#!/bin/bash

BASEDIR=$(pwd)

ln -s -f $BASEDIR/alacritty ~/.config/alacritty
ln -s -f $BASEDIR/fish ~/.config/fish
ln -s -f $BASEDIR/gh ~/.config/gh
ln -s -f $BASEDIR/nvim ~/.config/nvim
ln -s -f $BASEDIR/.gitconfig ~/.gitconfig

echo "if [[ \$(ps --no-header --pid=\$PPID --format=comm) != "fish" && -z \${BASH_EXECUTION_STRING} ]]" >> ~/.bashrc
echo "then" >> ~/.bashrc
echo "	exec fish" >> ~/.bashrc
echo "fi" >> ~/.bashrc