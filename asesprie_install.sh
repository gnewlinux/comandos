#!/bin/bash

echo "Atualização do sistema e download das dependencias"
sudo apt-get update
sudo apt-get install -y g++ libx11-dev libxcursor-dev cmake ninja-build git -y

echo "Download source..."
git clone https://github.com/aseprite/aseprite.git
cd aseprite
git pull
git submodule update --init --recursive

echo "Compilando..."
mkdir build
cd build
cmake -G Ninja ..
ninja aseprite
echo "Compilação completa"

echo "Criar atalho em /usr/bin/"
sudo ln -s bin/aseprite /usr/bin/aseprite
