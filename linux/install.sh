#!/bin/bash

set -eou pipefail

# - Variables - 
# TODO: automatically check latest version from the internet
GO_VER=1.18.2
RIPGREP_VER=13.0.0

OS_ARCH=${OS_ARCH}

SOURCE_DIR=~/Source

mkdir -p $SOURCE_DIR

sudo apt install -y wget \
               curl \
               fdisk \
               neovim \
               npm \
               fzf

# install go
wget https://go.dev/dl/go$GO_VER.linux-${OS_ARCH}.tar.gz
sudo tar xvfz go$GO_VER.linux-${OS_ARCH}.tar.gz -C /usr/local

# Install vim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# nvim providers
python3 -m pip install --user --upgrade pynvim
npm install -g neovim
gem install neovim

## oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerline9k themes
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/Source/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/Source/zsh-autosuggestions

go install golang.org/x/tools/gopls@latest

# rigrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/$[RIPGREP}/ripgrep_${RIPGREP}_${OS_ARCH}.deb
sudo dpkg -i ripgrep_${RIPGREP_VER}_${OS_ARCH}.deb

# Nerd fonts
cd $SOURCE_DIR
git clone -depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

# 1password
sudo apt update && sudo apt install 1password
