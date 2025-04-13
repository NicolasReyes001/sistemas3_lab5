#!/bin/bash

ORIGEN="docs/informe.txt"
DESTINO="respaldos/informe_$(date +%Y-%m-%d_%H-%M-%S).txt"
LOG="log_respaldo.txt"

# Verificar si existe el archivo
if [ -f "$ORIGEN" ]; then
    cp "$ORIGEN" "$DESTINO"
    echo "Respaldo generado: $DESTINO"
    echo "[$(date)] Respaldo generado: $DESTINO" >> "$LOG"
else
    echo "El archivo $ORIGEN no existe. No se generó respaldo."
    echo "[$(date)] ERROR: No se encontró $ORIGEN" >> "$LOG"
fi

