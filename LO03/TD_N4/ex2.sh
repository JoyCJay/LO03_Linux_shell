#!/bin/bash

if [ $# -eq 0 ]
then 
	echo "avec des parametres S.V.P"
	exit 2
fi

max=$1
until [ "$1" == "" ]
do 
	if [ $max -lt $1 ]
	then 
		max=$1
	fi
	shift
done
echo "le plus grand des entiers passes en parametre est $max"
