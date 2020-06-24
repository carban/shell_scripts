#/bin/bash
#
#Cantidad de procesos
procesos=$(ps ax | tail -n +2 | wc -l)
#Porcentaje de espacio libre
espacio=$(df|grep root |awk '{print $5}'| cut -c1-2)
#Porcentaje de memoria libre
memoriaLibre=$(free|grep Memoria | awk '{print $4/$2 * 100 }')
#
#
curl --silent --request POST --header "X-THINGSPEAKAPIKEY: B7U2UOIXP0XBC3XO" --data "field1=${procesos}&field2=${espacio}&field3=${memoriaLibre}" http://api.thingspeak.com/update
