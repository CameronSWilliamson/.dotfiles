#!/bin/bash

# installing neovim
sudo apt remove neovim -y
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm ./nvim-linux64.deb

sudo apt update; sudo apt upgrade -y
sudo apt install fish alacritty python3-pip -y

# installing nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g pyright
sudo apt install python3-pip

# Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

mkdir ~/bin
 curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/bin/rust-analyzer
sudo chmod +x ~/bin/rust-analyzer
