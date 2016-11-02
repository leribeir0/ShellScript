#!/bin/bash

if [ "$1" == "" ]
then
	echo "Não foi possivel executar o script!"
	echo "Exemplo de uso: $0 meusite.com"
else
	wget -q "$1"
	cat index.html | grep href | cut -d '"' -f2 | cut -d "/" -f3 | grep "\." | sort -u > lista.txt
	for url in $(cat lista.txt);
	do host "$url" | grep "has address";
	done
	rm index.html
	rm lista.txt
fi
