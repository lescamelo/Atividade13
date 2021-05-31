#!/bin/bash

arq=0
contador=0
opc=""

while read linha;
do
	for i in ${linha};
	do
		arq=$(($arq + 1))
	done
	for x in ${linha};
	do
		contador=$(($contador + 1))
		if [ $contador -eq 1 ];
		then
			opc=$x
		else
			if [ $contador -lt $arq ]
			then
				opc="$opc ${x:0:1}."
			else
				if [ $contador -eq $arq ];
				then
					opc="$opc $x"
				fi
			fi
		fi
	done
	echo $opc
done <$1

