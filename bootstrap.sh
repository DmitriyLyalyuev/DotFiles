#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install software
brew install git-crypt bash-completion pinentry-mac python mc gnupg terraform packer packer-completion wget vim bash git
brew cask install docker mactex

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

ln -s ~/Projects/Public/DotFiles/.profile ~/.profile
ln -s ~/Projects/Public/DotFiles/.bashrc ~/.bashrc
ln -s ~/Projects/Public/DotFiles/.gitconfig ~/.gitconfig
ln -s ~/Projects/Public/DotFiles/.gitcommit ~/.gitcommit
ln -s ~/Projects/Public/DotFiles/.bash_functions ~/.bash_functions
ln -s ~/Projects/Public/DotFiles/.bash_aliases ~/.bash_aliases
ln -s ~/Projects/Public/DotFiles/.bash_completion ~/.bash_completion
ln -s ~/Projects/Public/DotFiles/.vimrc ~/.vimrc

