#!/bin/bash
if [ -z $# ]|| [ ! -d $# ];then
        echo "No existe la carpeta o no hay argumento"
        exit 1
fi
palabra=$1
carpetas=${2:-/}
resultados=$(grep -rl -D skip "$palabra" "$carpetas" 2>/dev/null)

if [ -z "$resultados" ]; then
    echo "No se hallo la palabra $palabra"
    exit 0
fi
echo "Archivos con $palabra":
echo "$resultados" | while read -r archivo; do
    realpath "$archivo"
done
