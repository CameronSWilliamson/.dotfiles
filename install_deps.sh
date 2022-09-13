#!/bin/bash

function apti() {
    sudo apt install -y $1
}

function npm() {
    sudo npm install -g $1
}

# installing neovim
# sudo apt remove neovim -y
# wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
# apti ./nvim-linux64.deb
# rm ./nvim-linux64.deb
# 
# sudo apt update; sudo apt upgrade -y
# apti fish 
# apti alacritty 
# apti python3-pip
# npm pyright
# pip3 install pynvim

# installing nodejs
# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
# apti nodejs


# Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# mkdir ~/bin
# curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/bin/rust-analyzer
# sudo chmod +x ~/bin/rust-analyzer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# wget https://github.com/cli/cli/releases/download/v2.12.1/gh_2.12.1_linux_amd64.deb
# apti ./gh_2.12.1_linux_amd64.deb
# rm ./gh_2.12.1_linux_amd64.deb
# # Colored ls command
# sudo apt install exa
