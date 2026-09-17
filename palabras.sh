#!/bin/bash
if [ -z $# ] || [ ! -d $# ]; then
	echo "No pusiste ningun argumento o no existe la carpeta"
	exit 1
fi


carpetas=${1:-/}
resultados=$(grep -rl -D skip "home" "$carpetas" 2>/dev/null)

