#!/bin/bash
if [ ! -e ~/.fonts ]; then
        mkdir -p ~/.fonts && cd ~/.fonts

	echo 'Iniciando download da fonte'
		curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip

	echo 'Instalando fontes'
		unzip ~/Downloads/Hack.zip

	echo 'Fim da instalação'
       
else
    echo 'Fontes instaladas'
fi

exit 0