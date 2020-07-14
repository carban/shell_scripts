#!/bin/sh

files=`(cat ${1})`

for i in $files; do
  #echo "sisas pri $i"
  notify-send "hola" -i $i -u low -t 5000; 
  sleep 0.5
done	
