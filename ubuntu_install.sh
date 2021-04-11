
sudo apt update -y && sudo apt upgrade -y

# --- install cmake ---
CMAKE_VER=3.20.1
wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VER}/cmake-${CMAKE_VER}-linux-x86_64.sh
sudo sh cmake-${CMAKE_VER}-linux-x86_64.sh --prefix=/usr/local --exclude-subdir
rm cmake-${CMAKE_VER}-linux-x86_64.sh

# ---- install albert ---
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert

sudo snap install discord mailspring vlc spotify