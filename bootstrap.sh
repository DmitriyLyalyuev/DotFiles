#!/bin/bash

# Install HomeBrew
sudo mkdir -p /opt/homebrew
sudo chown -R silver:staff /opt/homebrew
cd /opt/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /opt/homebrew

# Setup configs
ln -sf ~/Projects/Public/DotFiles/.gitconfig ~/.gitconfig
ln -sf ~/Projects/Public/DotFiles/.gitcommit ~/.gitcommit
ln -sf ~/Projects/Public/DotFiles/.gitignore ~/.gitignore
ln -sf ~/Projects/Public/DotFiles/.vimrc ~/.vimrc
ln -sf ~/Projects/Public/DotFiles/.gemrc ~/.gemrc
ln -sf ~/Projects/Public/DotFiles/.auto_completion ~/.auto_completion
ln -sf ~/Projects/Public/DotFiles/fish ~/config/fish
ln -sf ~/Projects/Public/DotFiles/.aliases ~/.aliases

# Setup software
xcode-select --install
brew bundle

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
