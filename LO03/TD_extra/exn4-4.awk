awk '
BEGIN{nb_ligne=0}
$0 ~ /root/{nb_ligne++;}
END{ printf ("le nombre est %d\n",nb_ligne); }
' /etc/passwd /etc/group
