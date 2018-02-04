#!/bin/bash
function factorielle {
n=$1
resultat=1
for (( ;n>1;n=n-1 ))
do
        let resultat=resultat*n
done

echo "le factorielle de $1 est $resultat"
}



echo "Saisir un nombre"
read num
if [ $num -gt 1 ]
then
	factorielle $num
else
	echo "error"
	exit 2
fi
 
