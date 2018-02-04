#!/bin/bash
jour='date | cut -d " " -f 1'
case $jour in
	Mon ) jour=lundi ;;
	Tue ) jour=mardi ;;
	Wed ) jour=mercredi ;;
	Thu ) jour=jeudi ;;
	Fri ) jour=vendredi ;;
	Sat ) jour=samedi ;;
	Sun ) jour=dimanche ;;
	* )
	echo "Inconnu"
	exit 7 ;;
esac
echo "le jour est $jour"
