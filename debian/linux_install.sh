# automatically install all my shit on linux

# update
sudo apt update -y
sudo apt upgrade -y

# install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

# install pandoc
# wget https://github.com/jgm/pandoc/releases/tag/2.10.1/pandoc-2.10.1-1-amd64.deb
# sudo apt install -y ./pandoc-2.10.1-1-amd64.deb

# install typora
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update -y
sudo apt-get install typora -y

# install spotify
sudo apt install snapd -y
sudo snap install spotify -y

sudo apt install krita -y

flatpak install flathub us.zoom.Zoom
flatpak run us.zoom.Zoom

flatpak install flathub org.videolan.VLC
flatpak run org.videolan.VLC

flatpak install flathub com.discordapp.Discord
flatpak run com.discordapp.Discord

flatpak install flathub com.visualstudio.code
flatpak run com.visualstudio.code

flatpak install flathub org.libreoffice.LibreOffice
flatpak run org.libreoffice.LibreOffice

flatpak install flathub com.gigitux.gtkwhats
flatpak run com.gigitux.gtkwhats
