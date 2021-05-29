sudo apt update -y && sudo apt upgrade -y
sudo apt install -y gdebi-core gnome-sushi make nautilus-admin
nautilus -q

sudo snap install discord mailspring vlc spotify bitwarden brave zoom-client gimp libreoffice
sudo snap install intellij-idea-community --classic --edge
sudo snap install cmake code --classic

# github desktop 
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb
sudo gdebi GitHubDesktop-linux-2.6.3-linux1.deb

# signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
sudo mv signal-desktop-keyring.gpg /usr/share/keyrings/
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# albert 
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert

# joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# pandoc
PANDOC_VER=2.13
wget https://github.com/jgm/pandoc/releases/download/${PANDOC_VER}/pandoc-${PANDOC_VER}-1-amd64.deb
dpkg -i pandoc-${PANDOC_VER}-1-amd64.deb
rm pandoc-${PANDOC_VER}-1-amd64.deb

echo ""
echo "--- Install complete! ---"