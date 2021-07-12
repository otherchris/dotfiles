#! /bin/bash

set -euo pipefail

cp -Rf config/* ~/.config
cp -Rf tmux ~/.tmux
cp tmux.conf ~/.tmux.conf
cp zshrc ~/.zshrc
cp aliases ~/.aliases

source ~/.zshrc
nvim --cmd PlugInstall -c 'qa!'

npm i -g vscode-langservers-extracted

