#!/bin/bash

rutaorigen="/var/www/scripts"
rutadestino="/var/www/backups/zip"

#/var/www/backups/zip/backup_20250906_105721.zip
archivo="$rutadestino/backup_$(date +%Y%m%d_%H%M%S).zip"

zip -r "$archivo" "$rutaorigen"

echo "Archivo: $archivo backup ha sido finalizado"