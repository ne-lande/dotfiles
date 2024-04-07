#!/bin/bash

ln -sf ~/dotfiles/.zshrc ~/
ln -sf ~/dotfiles/.tmux.conf ~/
find .config -maxdepth 1 -mindepth 1 -exec ln -sf ~/dotfiles/{} ~/.config/ \;
