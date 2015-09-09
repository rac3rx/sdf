#!/bin/bash
########################################################
##Fortune to Twitter                                  ##
##Script Creado para la comunidad Gnu/Linuxera GPL 3.*##
##Por Angelverde (Angel Alvarado)                     ##
##Dudas, sugerencias, saludos, reclamos a:            ##
## alvaradoangel57@gmail.com                          ##
##                                                    ##
##No olviden visitar:                                 ##
##El tux Angelverde « Un entusiasta Gnu/Linux/Ubuntero##
##http://angelverde.info                              ##
##                                                    ##
##Depende de los paquetes: fortune-es, curl           ##
## y libnotify-bin                                    ##
########################################################

CATEGORY=""
#Selecciona tus categorias favoritas y colocalas dentro de las comillas.

BASE=$HOME/.fortune-to-twitter
caracter=150
while (( $caracter > 140 )); do
{
	fortune  $CATEGORY > $BASE
	caracter=$(wc -m $BASE | tr -d "$BASE --")
	echo $caracter
}
done

if (( $caracter < 141 )); then
{
	curl -u USUARIO:CONTRASEÑA -d status="$(cat $BASE)" http://twitter.com/statuses/update.xml > /dev/null
	notify-send "Fortune posteado en Twitter" "$(cat $BASE)
Gracias por usar el script http://angelverde.info"
}
else
	notify-send "Fortune To Twitter Error" "Caracteres Máximos no soportados :) , notificar a alvaradoangel57@gmail.com o http://angelverde.info por favor"
fi
