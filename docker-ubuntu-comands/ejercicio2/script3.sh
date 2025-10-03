#!/bin/bash

rutaorigen="/var/www/scripts"
rutadestino="/var/www/backups"

#/var/www/backups/backup_20250906_105721.tar.gz
archivo="$rutadestino/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$archivo" -C "$rutaorigen" .

echo "Archivo: $archivo backup ha sido finalizado"