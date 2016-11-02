#!/bin/bash
if [ "$1" == "" ]
then
echo "CURSO DE PENTEST PROFISSIONAL - DESEC SECURITY"
echo "Exemplo de uso: $0 10.0.0.1"
else
for host in $(seq 1 254);do
ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f4 |sed 's/.$//'
done
fi
