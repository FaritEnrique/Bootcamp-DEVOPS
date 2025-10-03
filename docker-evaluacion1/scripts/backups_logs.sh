#!/bin/bash

ORIGEN="/var/nombreAlumno/log/"
BACKUP_DIR="/var/www/backup/"

mkdir -p "$BACKUP_DIR"

FECHA=$(date +%Y-%m-%d)

TAR_FILE="backup_logs_${FECHA}.tar"
tar -cvf "$BACKUP_DIR/$TAR_FILE" -C "$ORIGEN" .

ZIP_FILE="backup_logs_${FECHA}.zip"
zip -r "$BACKUP_DIR/$ZIP_FILE" "$ORIGEN"

echo "Backup creado: $BACKUP_DIR/$TAR_FILE"
echo "Backup creado: $BACKUP_DIR/$ZIP_FILE"