#!/bin/sh
# DOC https://docs.abstractapi.com/timezones/current-time
FORMATO="%I:%M %P"

#https://timezone.abstractapi.com/v1/current_time/?api_key=28a112ba54444ab58e44b6af69b26649&location=Cusco,peru
API="https://timezone.abstractapi.com/v1/current_time/"
KEY=
ZONAS=(tokyo madrid Sydney Lima Taipe)

for CIUDAD in "${ZONAS[@]}" 
do
  reloj=$(curl -s "$API?api_key=$KEY&location=$CIUDAD")
  if [ -n "reloj" ]; then
    DATETIME_json=$(echo "$reloj" | jq ".datetime")
    LIMPIO="${DATETIME_json//\"/}"

    hora_real=$(date -d "$LIMPIO" +"$FORMATO")
  fi
  echo "${CIUDAD^} $hora_real"
  sleep 10s
done
