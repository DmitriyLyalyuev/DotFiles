#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install software
brew install pinentry-mac python mc gnupg terraform packer packer-completion wget vim zsh git lazygit
brew cask install docker slack telegram dozer

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf ~/Projects/Public/DotFiles/.profile ~/.profile
ln -sf ~/Projects/Public/DotFiles/.bashrc ~/.bashrc
ln -sf ~/Projects/Public/DotFiles/.zshrc ~/.zshrc
ln -sf ~/Projects/Public/DotFiles/.gitconfig ~/.gitconfig
ln -sf ~/Projects/Public/DotFiles/.gitcommit ~/.gitcommit
ln -sf ~/Projects/Public/DotFiles/.vimrc ~/.vimrc
