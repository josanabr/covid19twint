#!/usr/bin/env bash
#
# Este script recupera los tweets del ultimo dia de un usuario en tweeter.
# Este script deberia ser programado con el programa cron para ejecutarse todos
# los dias a la 1 a.m. Esto con el objetivo de recopilar los tweets del dia
# anterior
#
# 0 1 * * * [RUTASCRIPT]/collecttweets.sh
#
# AUTHOR: John Sanabria - john.sanabria@correounivalle.edu.co
# DATE: 2020-04-06
#
SOURCES=(ColombiaET elpaiscali elespectador bluradioco lafm NoticiasCaracol NoticiasRCN)
FLAG=$(which gdate)
if [ "${FLAG}" == "" ]; then
  DATEY=$(date -d "-1 day" +"%Y-%m-%d")
  DATEN=$(date +"%Y-%m-%d")
else
  DATEY=$(gdate -d "-1 day" +"%Y-%m-%d")
  DATEN=$(gdate +"%Y-%m-%d")
fi
for i in ${SOURCES[@]} ; do
 ./getTweetsGivenTime.sh "${i}" ${DATEY} ${DATEN}
 sleep $((60*5))
done
