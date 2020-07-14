#!/bin/sh

files=`(cat listIcons.txt)`

for i in $files; do
  #echo "sisas pri $i"
  notify-send "hola" "hola" -i $i
done	
