#! /bin/bash

set -euo pipefail

cp -R config ~/.config
cp -R tmux ~/.tmux
cp tmux.conf ~/.tmux.conf
cp zshrc ~/.zshrc

source ~/.zshrc
nvim --cmd PlugInstall -c 'qa!'
