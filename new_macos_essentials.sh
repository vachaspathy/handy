#!/bin/sh

# Install Home Brew
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew tap caskroom/versions

brew install brew-cask

brew cask install google-chrome
brew install Caskroom/cask/caffeine
brew cask install firefox
brew cask install iterm2
brew cask install sublime-text
brew cask install skype
brew cask install the-unarchiver

brew cask install Caskroom/cask/virtualbox
brew install docker
brew install boot2docker

brew install fish
brew install curl
brew install maven
brew install awk
