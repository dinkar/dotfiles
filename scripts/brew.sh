#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/bash
# Intall zsh
brew install zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install Python
#brew install python
#brew install python3

# Install ruby-build and rbenv
#brew install ruby-build
#brew install rbenv
#LINE='eval "$(rbenv init -)"'
#grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
#brew install vim --with-override-system--vi #--override-system-vi
#brew install homebrew/php/php55 --with-gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install z
brew install tmux
#brew install ack
#brew install dark-mode
#brew install exiv2

# Install Heroku
#brew install heroku-toolbelt
#heroku update

# Core casks
brew cask install --appdir="/Applications" iterm2
#brew cask install --appdir="/Applications" alfred
#brew cask install --appdir="~/Applications" java
#brew cask install --appdir="~/Applications" xquartz
brew tap caskroom/versions
brew cask install java8

# Development tool casks
#brew cask install --appdir="/Applications" sublime-text
#brew cask install --appdir="/Applications" atom
#brew cask install --appdir="/Applications" virtualbox
#brew cask install --appdir="/Applications" vagrant
#brew cask install --appdir="/Applications" macdown

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
#brew cask install --appdir="/Applications" gimp
brew cask install --appdir="/Applications" clipy
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" vlc
#brew cask install --appdir="/Applications" inkscape
#brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" skype
#brew cask install --appdir="/Applications" slack

# Install Docker, which requires virtualbox
brew install docker
brew install boot2docker

# Install m-cli
brew install m-cli

# Remove outdated versions from the cellar.
brew cleanup
