#!/bin/bash
if [ ! -e ~/.ssh/id_rsa ]
then
	ssh-keygen -t rsa -b 4096 -C "guialvesp1@gmail.com"

	eval "$(ssh-agent -s)"
else
	echo "Arquivo já existe."
fi

ssh-add -K ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Conteúdo de 'id_rsa.pub' copiado."