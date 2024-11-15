#!/usr/bin/bash

if [ -f w3.css ]; then

echo "w3.css ya esta descargado"

else

wget https://www.w3schools.com/w3css/4/w3.css

fi

./buildJenkins.sh