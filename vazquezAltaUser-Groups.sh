#!/bin/bash

USUARIO_ORIGEN=$1
ARCHIVO_LISTA=$2

CLAVE=$(sudo grep "^$USUARIO_ORIGEN:" /etc/shadow | cut -d: -f2)

if [ -z "$CLAVE" ]; then
    echo "El usuario $USUARIO_ORIGEN no existe o no se pudo obtener su clave."
    exit 1
fi

while IFS= read -r linea
do
    if [ -z "$linea" ]; then
        continue
    fi

    GRUPO=$(echo "$linea" | cut -d";" -f1)

    if ! getent group "$GRUPO" > /dev/null; then
        sudo groupadd "$GRUPO"
        echo "Grupo creado: $GRUPO"
    else
        echo "Grupo $GRUPO ya existe"
    fi

    CANT=$(echo "$linea" | grep -o ";" | wc -l)

    for ((i=2; i<=CANT+1; i++))
    do
        USER=$(echo "$linea" | cut -d";" -f$i)

        if id "$USER" > /dev/null 2>&1; then
            echo "Usuario $USER ya existe"
        else
            sudo useradd -m -p "$CLAVE" -g "$GRUPO" "$USER"
            echo "Usuario creado: $USER  (grupo: $GRUPO)"
        fi
    done

done < "$ARCHIVO_LISTA"
