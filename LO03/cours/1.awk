ls -l | awk '
NF>=9{printf ("nom du fichier : %s ---->taille du fichier : %d\n",$9,$5);}

'
