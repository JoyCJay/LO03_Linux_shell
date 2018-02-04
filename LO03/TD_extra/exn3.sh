#!/bin/bash
function f1 {
indice=1
while [ $indice -le 10 ]
do
	touch  /home/joycjay/LO03/TD_extra/exn3/fichier$indice
	indice=`expr $indice + 1`
done
}

function f2 {
var=1
until [ $var -gt 10 ]
do
	touch  /home/joycjay/LO03/TD_extra/exn3/-fichier$var
	let var=var+1
done
}

f1
f2
