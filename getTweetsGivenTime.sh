#!/usr/bin/env bash
#
# Este script espera tres argumentos,
# - usuario en twitter
# - fecha de inicio en formato "yyyy-mm-dd hh:mm:ss"
# - fecha de finalizacion en formato "yyyy-mm-dd hh:mm:ss"
#
# Lo que hace el script es usar la herramienta twint para traer todos aquellos
# tweets que se generaron entre la 'fecha de inicio' y la 'fecha de 
# finalizacion' por parte del 'usuario' indicado.
#
# Author: John Sanabria - john.sanabria@gmail.com
# Date: 2020-04-05
#

if [ ${#} -ne 3 ]; then
  echo "Se requieren tres argumentos"
  echo "arg1: usuario en twitter"
  echo "arg2: fecha en formato yyyy-mm-dd hh:mm:ss"
  echo "arg3: fecha en formato yyyy-mm-dd hh:mm:ss"
  exit 0
fi 
USER="${1}"
SINCE="${2}"
UNTIL="${3}"
FILENAME="Tweets-${USER}-${SINCE}-${UNTIL}.json"
if [ -f "${FILENAME}" ]; then
  echo "File \"${FILENAME}\" already exists"
  echo "Erase it if does not contain what you expect"
  exit 1
fi
twint -u ${USER} --json -o "${FILENAME}" --since "${SINCE}" --until "${UNTIL}"
RETURNV="${?}"
if [ ${RETURNV} -eq 0 ]; then
  echo "Resultados en [${FILENAME}]"
else
  echo "Twint error"
  exit ${RETURNV}
fi
