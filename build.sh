#!/usr/bin/bash

CSS_FILE="w3.css"
CSS_URL="https://www.w3schools.com/w3css/4/w3.css"

mkdir -p web

if [ -f ./web/"$CSS_FILE" ]; then
echo "Carpeta recien creada"
else
curl -o "$CSS_FILE" "$CSS_URL"

if [ $? -eq 0 ]; then
echo "$CSS_FILE se ha descargado"
mv "$CSS_FILE" ./web
else
echo "ERROR en la descarga de $CSS_FILE"
fi
fi

./buildJenkins.sh

echo "Páginas creadas"
