#!/usr/bin/env bash

mkdir -p datos resultados errores

./demo_filtrar_temperaturas.sh

grep "temperatura" datos/mediciones.txt | sort 1>> resultados/resumen.txt

grep "sensor" datos/archivo_inexistente.txt 2>> errores/errores.log

python3 presentacion.py 1>> resultados/resumen.txt
