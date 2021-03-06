# install Xcode command line tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install apps
brew install pandoc &&\
brew cask install dashlane visual-studio-code brave-browser discord typora \
krita gimp google-photos-backup-and-sync spotify transmission zoomus zotero \
hiddenbar rectangle blender signal
