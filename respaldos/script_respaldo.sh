#!/bin/bash

# Variables
fecha=$(date +"%Y%m%d_%H%M%S")
origen="docs/informe.txt"
destino="respaldos/informe_$fecha.txt"

# Copiar archivo
cp "$origen" "$destino"

# Mensaje de éxito
echo "Respaldo creado en: $destino"
