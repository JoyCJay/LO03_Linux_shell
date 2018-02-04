#!/bin/bash

#if [ echo $1 | grep -c `[^a-Z]` -ne 0 ]
#then 
#	exit 2
#fi

set `echo $1 | tr 'A-Z]' 'a-z'`


nb_char=`echo $1 | wc -c`
nb_char=`expr $nb_char - 1`

indice_fin=`expr $nb_char / 2`

indice=1
indice2=$nb_char
while [ $indice -le $indice_fin ]
do 
	a=`echo $1 | cut -c $indice`
	b=`echo $1 | cut -c $indice2`
	if [ $a != $b ]
	then
		echo "le mot $1 n'est pas palindrome"
		exit 1
	fi
let indice=indice+1
let indice2=indice2-1
done

echo "le mot $1 est palindrome"
