#!/bin/bash
carpetas=${1:-/}
resultados=$(grep -rl -D skip "home" "$carpetas" 2>/dev/null)
