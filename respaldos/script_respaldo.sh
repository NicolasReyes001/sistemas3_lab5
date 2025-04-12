#!/bin/bash

# Variables
fecha=$(date +"%Y%m%d_%H%M%S")
origen="docs/informe.txt"
destino="respaldos/informe_$fecha.txt"

# Validar existencia del archivo origen
if [ -f "$origen" ]; then
    cp "$origen" "$destino"
    echo "Respaldo creado en: $destino"
else
    echo "Error: El archivo $origen no existe. No se realizó el respaldo."
fi

