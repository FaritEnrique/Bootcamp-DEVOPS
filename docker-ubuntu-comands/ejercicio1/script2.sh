#!/bin/bash

rutaarchivo="/etc/passwd"
nombrearchivo="reporteawk.txt"


echo "--Ejercicio 1 reporte--" > $nombrearchivo
echo "--------------------------" >> $nombrearchivo

# caso utilizando awk 
awk -F: '{print $1}' $rutaarchivo | sort -r >> $nombrearchivo

echo "Reporte awk finalizado en el archivo: $nombrearchivo