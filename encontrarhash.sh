#!/bin/bash

# Calcula el hash MD5 en un archivo 
  hash=$(md5sum "$archivo" | awk '{print $1}')
  if [ "$hash" == "nombrehash" ]; then
    echo "¡Archivo encontrado! El nombre del archivo es: $archivo"
  fi


# Calcula el hash MD5 en archivo zip

for archivo in $(unzip -l x.zip | awk '{print $4}'); do
  hash=$(md5sum "$archivo" | awk '{print $1}')
  if [ "$hash" == "nombrehash" ]; then
    echo "¡Archivo encontrado en el zip! El nombre del archivo es: $archivo"
  fi
done
