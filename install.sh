#! /bin/bash

set -euo pipefail

# Install zsh
if [[ ! -d $HOME/.oh-my-zsh ]]
then
  wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -
fi

# Install asdf
if [[ ! -d $HOME/.asdf ]]
then
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.8.1
fi

# Install powerlevel10k
if [[ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]]
then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install vim-plug
if [[ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ]]
then
  curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d $HOME/.config ]]; then mkdir $HOME/.config; fi
if [[ ! -d $HOME/.tmux ]]; then mkdir $HOME/.tmux; fi

cp -R -f config/* $HOME/.config
cp -R -f tmux $HOME/.tmux
cp tmux.conf $HOME/.tmux.conf
cp zshrc $HOME/.zshrc
cp aliases $HOME/.aliases
cp tool-versions $HOME/.tool-versions
cp p10k.zsh $HOME/.p10k.zsh

cd $HOME
tools=$(comm -13 <(asdf plugin list) <(cat $HOME/.tool-versions | awk '{ print $1 }'))
for tool in $tools
do
  asdf plugin add $tool
done

asdf install

nvim --cmd PlugInstall -c 'qa!'

npm i -g vscode-langservers-extracted

