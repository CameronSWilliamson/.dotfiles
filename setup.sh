#!/bin/bash

BASE=$(pwd)

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
    nvim
    rofi
    polybar
    picom
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

link $BASE/scripts/* ~/.local/bin/

cd ~
git clone https://github.com/ohmyzsh/ohmyzsh .oh-my-zsh
