#!/bin/bash

rutaarchivo="/etc/passwd"
nombrearchivo="reporte.txt"


echo "--Ejercicio 1 reporte--" > $nombrearchivo
echo "--------------------------" >> $nombrearchivo

# caso utilizando cut 
cut -d: -f1 $rutaarchivo | sort -r >> $nombrearchivo

echo "Reporte finalizado en el archivo: $nombrearchivo"