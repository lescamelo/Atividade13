#!/bin/bash

arquivo=""
menor=0

while read linha;
do
	teste=${#linha}
	if [ $menor -eq 0 ];
	then
		menor=$teste
		nome=${linha}
	else
		if [ $menor -gt $teste ];
		then
			menor=$teste
			nome=${linha}
		fi
	fi

done < $1
echo "O menor nome informado é: $nome"
