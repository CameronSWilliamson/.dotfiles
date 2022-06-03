#!/bin/bash

BASEDIR="$(cd "$dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/alacritty ~/.config/alacritty
ln -s ${BASEDIR}/fish ~/.config/fish
ln -s ${BASEDIR}/gh ~/.config/gh
ln -s ${BASEDIR}/nvim ~/.config/nvim
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
