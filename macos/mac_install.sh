# install Xcode command line tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install apps
brew install git

git clone --recursive https://github.com/rpuhalovich/install_scripts.git

./install_scripts/git/git_global.sh

brew install pandoc visual-studio-code firefox discord
brew install gimp spotify transmission zoomus notion
brew install hiddenbar rectangle signal cloc keka micro
