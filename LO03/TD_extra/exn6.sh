for nom_fichier in $(locate crontab | grep "/etc/")
do
	ls -l $nom_fichier >>exn6.txt
done

