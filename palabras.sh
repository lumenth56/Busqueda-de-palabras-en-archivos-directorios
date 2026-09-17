#!/bin/bash
if [ -z $# ] || [ ! -d $# ]; then
	echo "No pusiste ningun argumento o no existe la carpeta"
	exit 1
fi


carpeta=${1:-/}
resultado=$(grep -rl -D skip "$palabra" "$carpeta" 2>/dev/null)

if [ -z "$resultado" ]; then
    echo "No se hallo la palabra $palabra"
    exit 0
fi
echo "Archivos con "$palabra":
echo "$resultado" | while read -r archivo; do
    realpath "$archivo"
done
