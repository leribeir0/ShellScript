#!/bin/bash

if [ "$1" == "" ]
then
echo "Usage: $0 site.com"
else
for palavra in $(cat "$2")
do 
resp=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
resp2=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra)
if [ $resp == "200" ]
then
echo "Diretorio encontrado : $palavra"
fi
if [ $resp2 == "200" ]
then
echo "Arquivo encontrado : $palavra"
fi
done
fi
