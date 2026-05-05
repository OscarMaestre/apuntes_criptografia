#!/bin/bash
set -e


SUBDIRS=("cap1-fundamentos")

for dir in "${SUBDIRS[@]}"; do
    if [ -d "$dir" ] && [ -f "$dir/Makefile" ]; then
        echo "==> Entrando en $dir"
        (cd "$dir" && make "$@")
    else
        echo "Saltando $dir (no existe o no tiene Makefile)"
    fi
done

make html
make singlehtml
