#!/bin/bash

# Installing Apps
    echo "Installing Apps"

    ## Browser
        echo "Browser"
        sudo snap install firefox

    ## Communication
        echo "Communication"
        sudo snap install discord
        sudo snap install slack --classic
        sudo snap install skype --classic
        sudo snap install telegram-desktop

    ## Development
        echo "Development"
        sudo snap install code-insiders --classic
        sudo snap install datagrip --classic

    ## Media
        echo "Media"
        sudo snap install audacity
        sudo snap install spotify
        sudo snap install vlc