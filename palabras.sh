#!/bin/bash
if [ -z $1 ]|| [ ! -d $1 ];then
        echo "No existe la carpeta o no hay argumento"
        exit 1
fi
palabra="home"
carpetas=${1:-/}
resultados=$(grep -rl -D skip "$palabra" "$carpetas" 2>/dev/null)

if [ -z "$resultados" ]; then
    echo "No se hallo la palabra home"
    exit 0
fi
echo "Archivos con home":
echo "$resultados" | while read -r archivo; do
    realpath "$archivo"
done
