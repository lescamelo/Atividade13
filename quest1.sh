#!/bin/bash

function maior_do_array() {
	maior=0
	for i in $*;
	do
		if [ $i -gt $maior ];
		then
			maior=$i
		fi
	done
	echo "Maior valor informado na lista é: $maior"
}

read -p "Informe alguns números:" numero

array=( $numero )
echo "Array: ${array[*]}"
maior_do_array ${array[*]}
