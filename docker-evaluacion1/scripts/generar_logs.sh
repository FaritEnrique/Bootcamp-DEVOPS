#!/bin/bash

LOG_DIR="/var/www/log/"

mkdir -p "$LOG_DIR"

FECHA=$(date +%Y-%m-%d)

NOMBRE_ARCHIVO="archivo_$(date +%H%M%S).log"

RUTA_ARCHIVO="$LOG_DIR/$NOMBRE_ARCHIVO"

curl -s https://es.lipsum.com/feed/html | sed -n '/<p>/,/<\/p>/p' | sed 's/<[^>]*>//g' > "$RUTA_ARCHIVO"

echo "Archivo de log creado: $RUTA_ARCHIVO"