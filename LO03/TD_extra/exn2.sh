#!/bin/bash

function f1 {
    grep -n "^$login:" /etc/passwd
    if [ $? -eq 1 ]
    then
        echo "l'Utilisateur $login n'existe pas"
    else
        echo "Oui, il existe"
    fi
}

function f2 {
grep "$login" /etc/passwd | sed 's/^.*:[a-z]:\([0-9][0-9]*\):\([0-9][0-9]*\):.*:.*:.*/UID=\1, GID=\2/'
}
function f2_awk {
grep "$login" /etc/passwd | awk -F ":" 'BEGIN{OFS="(^_^)"}{printf("UID=%d, GID=%d\n",$3,$4)}'
 
}

echo "Saisir login a a verrifier"
read login

while true
do
echo "Saisir votre choix:"
echo "1-Verifier l'existence d'un utilisateur"
echo "2-Connatre l'UID et GID"
echo "q-Quitter"

read choix

case $choix in 
1 )
    f1
;;
2 )
    f2_awk
;;
q ) exit 1
;;
* ) echo "errer";;
esac
echo "------------------------------------------"
done
