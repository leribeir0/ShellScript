#!/bin/bash

if [ "$1" == "" ]; then
	echo "Não foi possivel executar o script."
	echo "Modo de usar: $0 192.168.0"
else
	for ip in $(seq 1 254);do ping -c 1 "$1"."$ip" | grep "64 bytes" >> lista.txt ; done
	cat lista.txt | wc -l
fi
