#!/bin/bash

ORIGEN="/var/www/log/"
DESTINO="/var/nombreAlumno/log/"

mkdir -p "$DESTINO"

mv "$ORIGEN"* "$DESTINO"

rm -f "$ORIGEN"*

echo "Archivos de log movidos de $ORIGEN a $DESTINO"
echo "Contenido de $ORIGEN eliminado"