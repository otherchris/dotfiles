#! /bin/bash

set -euo pipefail

cp -r config ~/.config
cp -r tmux ~/.tmux
cp tmux.conf ~/.tmux.conf
cp zshrc ~/.zshrc

source ~/.zshrc
