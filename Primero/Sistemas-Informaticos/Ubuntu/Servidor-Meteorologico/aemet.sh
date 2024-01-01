#!/bin/bash
#autor: Pere Prior

#variables
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
hour=$(date +%H)

url1="${year}${month}${day}12+000_ww_gpx0a200.gif"
url2="${year}${month}${day}12+012_ww_g1x0a212.gif"
url3="${year}${month}${day}12+024_ww_g1x0a2d1.gif"
url4="${year}${month}${day}12+036_ww_g1x0a2c1.gif"
url5="${year}${month}${day}12+048_ww_g1x0a2d2.gif"
url6="${year}${month}${day}12+060_ww_g1x0a2c2.gif"

#creamos el directorio si aun no existe
if [ ! -d "/home/$USER/AEMET/month/day" ]; then
  mkdir -p /AEMET/$year/$month/$day
fi

#descargamos la imagen mas reciente de la pagina web de MAPAS CON FRENTES
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url1 -O /home/$USER/AEMET/$month/$day
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url2 -O /home/$USER/AEMET/$month/$day
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url3 -O /home/$USER/AEMET/$month/$day
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url4 -O /home/$USER/AEMET/$month/$day
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url5 -O /home/$USER/AEMET/$month/$day
wget https://www.aemet.es/es/eltiempo/prediccion/mapa_frentes/$url6 -O /home/$USER/AEMET/$month/$day
