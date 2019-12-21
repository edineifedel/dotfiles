#!/bin/bash
# author: neigroove
# after install clone https://github.com/neigroove/dotfiles.git

brew update

echo "Installing binaries"

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing git"
brew install git

echo "Installing iterm2"
brew cask install iterm2

echo "Installing tmux"
brew install tmux

echo "Installing vim"
brew install vim

echo "Installing zsh"
brew install zsh

echo "Setting zsh as default shell"
chsh -s $(which zsh)

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing VS Code"
brew cask install visual-studio-code

echo "Installing chrome"
brew cask install google-chrome

echo "Done"
