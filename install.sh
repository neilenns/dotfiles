#!/bin/bash

# Set up the gitconfig with ssh set up correctly for use with 1password
cp ./.gitconfig ~

# Clone zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy the zsh config
cp ./.zshrc ~

# set zsh as default shell for the remote user
chsh -s "$(which zsh)" "$_REMOTE_USER"
