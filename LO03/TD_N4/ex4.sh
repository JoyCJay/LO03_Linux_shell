#!/bin/bash
echo "Saisir une chaine de caractere"
read char
function a {
val=$( echo $char | grep -n [^a-Z0-9] | sed 's/:.*//g'  )
if [ "$val" != "" ]
then 
	echo "$char n'est pas une chaine de caractere"
else
	echo "Oui, $char est une chaine de caractere"
fi
}

function b {
	echo $char | grep [^a-Z0-9]
	if [ $? -eq 1 ] 
	then 
		echo "Oui"
	else
		echo "Non"
	fi
}

a
b
