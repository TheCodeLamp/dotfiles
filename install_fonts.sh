#! /bin/bash

mkdir ~/.fonts
wget -O /tmp/RobotoMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/RobotoMono.zip"
unzip -d ~/.fonts/RobotoMono /tmp/RobotoMono.zip
rm /tmp/RobotoMono.zip
