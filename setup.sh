#!/bin/bash

BASE=$(pwd)

chsh -s $(which zsh)

if [ ! -d  "$HOME/.config/" ]; then
    mkdir $HOME/.config
fi

function link() {
    ln -sf $BASE/$1 ~/$2
}

function config() {
    link $1 .config/$1
}

function home() {
    link $1 $1
}

configFiles=(
    alacritty
    fish
    gh
    i3
    kitty
    #nvim
    rofi
    polybar
    picom
    ranger
)

homeFiles=(
    .gitconfig
    .tmux.conf
    .zshrc
    .condarc
    .vimrc
)

for file in "${configFiles[@]}"
do
    config $file
done

for file in "${homeFiles[@]}"
do
    home $file
done

ln -sf $BASE/scripts/tmux-sessionizer $HOME/.local/bin

cd ~
git clone https://github.com/ohmyzsh/ohmyzsh .oh-my-zsh

#mkdir -p ~/.local/share/nvim/site/pack/packer/start/packer.nvim
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim
