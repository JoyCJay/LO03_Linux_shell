#!/bin/bash
echo "num=$#, all elements=$*"
indice=$#
until [ $indice -eq 0 ]
do
	echo ${!indice}
	let indice=indice-1
done
