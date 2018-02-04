#!/bin/bash
var=1
until [ $var -gt 10 ]
do
	touch fichier$var
	let var=var+1
done
