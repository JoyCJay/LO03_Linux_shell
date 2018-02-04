#! /bin/bash
echo "1-Afficher le nom de la machine"
echo "2-Afficher la liste des processus tournant sur la machine"
echo "3-Afficher le nom de l'utilisateur du script"
echo "4-Sortir"

while read -p "choisir votre otion:": choice
do
	case $choice in
	1) hostname;;
	2) ps;;
	3) whoami;;
	4) exit;;
	esac
done
