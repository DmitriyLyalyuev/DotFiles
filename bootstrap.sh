#!/bin/bash

# Install HomeBrew
sudo mkdir -p /opt/homebrew
sudo chown -R silver:staff /opt/homebrew
cd /opt/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

# Install OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup configs
ln -sf ~/Projects/Public/DotFiles/.profile ~/.profile
ln -sf ~/Projects/Public/DotFiles/.zshrc ~/.zshrc
ln -sf ~/Projects/Public/DotFiles/.zsh_aliases ~/.zsh_aliases
ln -sf ~/Projects/Public/DotFiles/.gitconfig ~/.gitconfig
ln -sf ~/Projects/Public/DotFiles/.gitcommit ~/.gitcommit
ln -sf ~/Projects/Public/DotFiles/.gitignore ~/.gitignore
ln -sf ~/Projects/Public/DotFiles/.vimrc ~/.vimrc
ln -sf ~/Projects/Public/DotFiles/.gemrc ~/.gemrc
ln -sf ~/Projects/Public/DotFiles/.auto_completion ~/.auto_completion
# Setup software
source ~/.zshrc
brew bundle

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
