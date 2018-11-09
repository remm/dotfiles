#!/usr/bin/env bash

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

#Make ZSH the default shell environment
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the ..zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Removes .fzf.bash and .fzf.zsh from $HOME (if it exists) and symlinks files from the .dotfiles
rm -rf $HOME/.fzf.bash; rm -rf $HOME/.fzf.zsh;
ln -s $HOME/.dotfiles/.fzf.bash $HOME/.fzf.bash
ln -s $HOME/.dotfiles/.fzf.zsh $HOME/.fzf.zsh
