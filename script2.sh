#/bin/bash
#
hola=15
#
key="B7U2UOIXP0XBC3XO"
curl --silent --request POST --header "X-THINGSPEAKAPIKEY: $key" --data "field2=${hola}" http://api.thingspeak.com/update
