#!/bin/bash

if [ "$1" == "" ]
then
echo "Não foi possivel iniciar o script."
echo "Exemplo de uso: $0 meusite.com.br"
else
wget -q  "$1"
cat index.html | grep "href" | cut -d "/" -f3 | sort -u | sort | cut -d '"' -f2 | grep  "$1" > lista.txt
for url in $(cat lista.txt);do host "$url" ;done
fi
