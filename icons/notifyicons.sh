#!/bin/sh

files=`(cat ${1})`

for i in $files; do
  #echo "sisas pri $i"
  notify-send $i -i $i -u low -t 5000; 
  sleep 0.5
done	
