#!/bin/bash

ln -s ~/code/dotfiles/bash/login/.bash_profile ~/.bash_profile
ln -s ~/code/dotfiles/bash/login/.bashrc ~/.bashrc
ln -s ~/code/dotfiles/bash/login/.bashrc_common ~/.bashrc_common
ln -s ~/code/dotfiles/bash/.git-prompt.sh ~/.git-prompt.sh
# https://medium.com/macoclock/how-to-remove-the-last-login-prompt-from-iterm-terminal-on-macos-8d70dea0f2e
ln -s ~/code/dotfiles/bash/.hushlogin ~/.hushlogin # remove extra terminal output
