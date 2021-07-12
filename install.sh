#! /bin/bash

set -euo pipefail

if [[ ! -d ~/.config ]]; then mkdir ~/.config; fi
if [[ ! -d ~/.tmux ]]; then mkdir ~/.tmux; fi

cp -R -f config/* ~/.config
cp -R -f tmux ~/.tmux
cp tmux.conf ~/.tmux.conf
cp zshrc ~/.zshrc
cp aliases ~/.aliases

source ~/.zshrc
nvim --cmd PlugInstall -c 'qa!'

npm i -g vscode-langservers-extracted

