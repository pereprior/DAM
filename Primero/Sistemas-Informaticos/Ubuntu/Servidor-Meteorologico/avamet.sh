#!/bin/bash
#autor: Pere Prior

#variables
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
hour=$(date +"%H""%M")
name="NulesEstany${year}${month}${day}${hour}.jpg"

#creamos el directorio si aun no existe
if [ ! -d "/home/$USER/AEMET/month/day" ]; then
  mkdir -p /AVAMET/$year/$month/$day
fi

#descargamos la imagen mas reciente de la pagina web de MAPAS CON FRENTES
wget https://www.avametnuvol.es/estacions/c06m082e04/webcam/webcam.jpg -O /AVAMET/$year/$month/$day/$name
