#!/bin/bash
function afficher
{
echo "Saisir le choix :"
echo "-c : Afficher le nom de la machine"
echo "-a : Afficher le chemin"
echo "-u : Afficher le nom de l'utilisateur"
echo "-q : Terminer"
}

while true
do
	afficher
	read choix
	case $choix in 
	-c ) hostname;;
	-a ) pwd;;
	-u ) whoami;;
	-q ) exit 22 ;;
	* ) echo "error";;
	esac
done
