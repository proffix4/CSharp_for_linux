#!/bin/sh

# https://www.monodevelop.com/download/

sudo apt install apt-transport-https dirmngr -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
sudo apt update

sudo apt-get install monodevelop -y

cd /usr/lib
sudo mkdir gnome-terminal
cd gnome-terminal
sudo ln -s /usr/libexec/gnome-terminal-server
cd ~/
