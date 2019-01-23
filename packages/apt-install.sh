#!/bin/bash

# update; upgrade and remove unused packages from operational system
    echo "Upgrade OS and removing unused packages 1/2"
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# Installing Deppendences
    echo "Installing Deppendences"
    sudo apt install -y curl
    sudo apt install -y flatpak

    ## Dropbox
        echo "Dropbox"
        sudo apt install -y libpango1.0-0
        sudo apt install -y libpangox-1.0-0
        sudo apt install -y python-gobject-2
        sudo apt install -y python-gtk2

    ## MEGAsync
        echo "MEGAsync"
        sudo apt install -y libcrypto++6
        sudo apt install -y libmediainfo0v5
        sudo apt install -y libmms0
        sudo apt install -y libtinyxml2-6a
        sudo apt install -y libzen0v5

    ## Astah UML
        echo "Astah UML"
        sudo apt install -y oracle-java8-set-default

# Adding packages keys PPA
    echo "Adding packages keys PPA"

    ## Bookworm
        echo "Bookworm"
        sudo add-apt-repository ppa:bookworm-team/bookworm

    ## Google Chrome
        echo "Google Chrome"
        wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
        sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

    ## Java 8
        echo "Java 8"
        sudo add-apt-repository ppa:webupd8team/java

    ## Pomodoro Timer
        echo "Pomodoro Timer"
        curl -L https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_18.10/Release.key | sudo apt-key add -
        sudo sh -c 'echo "deb https://download.opensuse.org/repositories/home:/kamilprusko/xUbuntu_18.10/ /" >> /etc/apt/sources.list.d/gnome-pomodoro.list'

# update; upgrade and remove unused packages from operational system
    echo "Upgrade OS and removing unused packages 2/2"
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

# Installing Apps
    echo "Installing Apps"

    ## Browser
        echo "Browser"
        sudo apt install -y google-chrome-stable

    ## Cloud Storage
        echo "Cloud Storage"

        ### Dropbox
            cd ~/Downloads && wget -O dropbox_2018.11.28_amd64.deb "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb"
            sudo dpkg -i dropbox_2018.11.28_amd64.deb
            sudo rm dropbox_2018.11.28_amd64.deb
        
        ### MEGAsync
            cd ~/Downloads && wget -O megasync.deb "https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb"
            sudo dpkg -i megasync.deb
            sudo rm megasync.deb

    ## Utilities
        echo "Utilities"
        sudo apt install -y chrome-gnome-shell
        sudo apt install -y filezilla
        sudo apt install -y gnome-pomodoro
        sudo apt install -y gnome-tweak-tool
        sudo apt install -y terminator
        sudo apt install -y wireshark
        sudo apt install -y zsh
        sudo apt install -y xclip
        sudo apt install com.github.babluboy.bookworm

        ### Astah UML
            echo "Astah UML"
            cd ~/Downloads && wget -O astah_uml_8.deb "http://cdn.change-vision.com/files/astah-uml_8.0.0.d641d4-0_all.deb"
            sudo dpkg -i astah_uml_8.deb
            sudo rm astah_uml_8.deb

        ### Teamviewer
            echo "Teamviewer"
            cd ~/Downloads && wget -O teamviewer_amd64.deb "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
            sudo dpkg -i teamviewer_amd64.deb
            sudo rm teamviewer_amd64.deb

# Configuring terminal
    echo "Configuring terminal(ZSH)"
    curl -fsSl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
    sudo usermod --shell $(which zsh) guialvesp1
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k