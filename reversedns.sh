#!/bin/bash

if [ $1 == "" ]; then
echo "Exemplo: $0 192.168.0"
else
for ip in $(seq 16 29);
do
host $1.$ip 
done
fi
