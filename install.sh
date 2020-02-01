#!/bin/bash

set -x

# docker key / repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# sublime text editor
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update 

# install apt packages
sudo apt install -y docker-ce steam steam-devices preload vim git firefox thunderbird sublime-text python3-pip
sudo apt upgrade -y

# install snaps
sudo snap install code --classic
sudo snap install kubectl --classic
sudo snap install slack --classic
sudo snap install golang --classic

# install dropbox client
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
