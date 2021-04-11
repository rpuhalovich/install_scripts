CMAKE_VER=3.20.1
wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VER}/cmake-${CMAKE_VER}-linux-x86_64.sh
sudo sh cmake-${CMAKE_VER}-linux-x86_64.sh --prefix=/usr/local --exclude-subdir
rm cmake-${CMAKE_VER}-linux-x86_64.sh