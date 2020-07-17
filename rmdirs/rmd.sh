#!/bin/sh

dirs=$(cat ${1})

for i in $dirs; do
	rm -rf $i
	echo "${i} removed"
done
