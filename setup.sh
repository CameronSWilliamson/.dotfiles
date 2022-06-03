#!/bin/bash

BASEDIR="$(cd "$dirname "${BASH_SOURCE[0]}")" && pwd)"

# Vim
ln -s ${BASEDIR}/nvim ~/.config/nvim

# gitconfig
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

# fish
ln -s ${BASEDIR}/fish ~/.config/fish

# alacritty
ln -s ${BASEDIR}/alacritty ~/.config/alacritty
