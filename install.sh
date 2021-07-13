#! /bin/bash

set -euo pipefail

if [[ ! -d $HOME/.oh-my-zsh ]]
then
  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

if [[ ! ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]]
then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

if [[ ! -d $HOME/.config ]]; then mkdir $HOME/.config; fi
if [[ ! -d $HOME/.tmux ]]; then mkdir $HOME/.tmux; fi

cp -R -f config/* $HOME/.config
cp -R -f tmux $HOME/.tmux
cp tmux.conf $HOME/.tmux.conf
cp zshrc $HOME/.zshrc
cp aliases $HOME/.aliases

nvim --cmd PlugInstall -c 'qa!'

npm i -g vscode-langservers-extracted

