#!/bin/bash

BASE=$(pwd)

ln -sf $BASE/alacritty ~/.config/alacritty
ln -sf $BASE/fish ~/.config/fish
ln -sf $BASE/gh ~/.config/gh
ln -sf $BASE/i3 ~/.config/i3
ln -sf $BASE/kitty ~/.config/kitty
ln -sf $BASE/nvim ~/.config/nvim
ln -sf $BASE/.gitconfig ~/.gitconfig

echo "if [[ \$(ps --no-header --pid=\$PPID --format=comm) != "fish" && -z \${BASH_EXECUTION_STRING} ]]" >> ~/.bashrc
echo "then" >> ~/.bashrc
echo "	exec fish" >> ~/.bashrc
echo "fi" >> ~/.bashrc
