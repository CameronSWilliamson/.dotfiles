# installing neovim
sudo apt remove neovim -y
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm ./nvim-linux64.deb

sudo apt update; sudo apt upgrade -y
sudo apt install fish alacritty -y

# installing nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g pylint

