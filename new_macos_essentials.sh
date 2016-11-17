#!/bin/sh

# Install Home Brew
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew tap caskroom/versions

brew install homebrew/completions/brew-cask-completion
brew install brew-cask

brew cask install google-chrome
brew cask install caffeine
brew cask install firefox
brew cask install iterm2
brew cask install sublime-text
brew cask install skype
brew cask install the-unarchiver

brew install fish
