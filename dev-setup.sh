#!/bin/sh

sudo pacman-key --init
sudo pacman -Syu
sudo pacman -S --noconfirm git zsh neovim stow

cd ~
git clone https://github.com/DuyAccel/dotfiles.git dotfiles
cd dotfiles
stow .
