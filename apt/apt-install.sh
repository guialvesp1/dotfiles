#!/bin/bash

# update; upgrade and remove unused packages from operational system

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# Adding packages keys PPA

    ## Dropbox

    sudo sh -c echo 'deb http://linux.dropbox.com/ubuntu cosmic main' >> /etc/apt/sources.list
    sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# update; upgrade and remove unused packages from operational system

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# Browser

sudo apt install -y google-chrome-stable
sudo apt install -y firefox

# Cloud Storage

sudo apt install -y dropbox
sudo apt install -y mega

# Communication

sudo apt install -y discord
sudo apt install -y skypeforlinux
sudo apt install -y slack-desktop

# Development

sudo apt install -y code

# Media

sudo apt install -y audacity
sudo apt install -y spotify-client
sudo apt install -y vlc

# Utilities

sudo apt install -y filezilla
sudo apt install -y terminator
sudo apt install -y wireshark
sudo apt install -y zsh
sudo apt install -y xclip

# Configuring terminal

sudo -y curl -fsSl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
sudo usermod --shell $(which zsh) guialvesp1