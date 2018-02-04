#!/bin/bash
function func1 {
while read ligne
do 
	indice=1
	set $ligne
	while [ $indice -le $# ]
	do
		echo "->$1"
		shift
	done
done < ./ex2.tarif
}

function func2 {
for mot in $(cat ./ex2.tarif) 
do
	./palindrome.sh $mot
done
}

func1
func2
