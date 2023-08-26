#!/bin/sh
#Author: Carban

sel=$(seq 1 -0.05 0.1 | dmenu -fn "Ubuntu-18" -sb orange -sf black -p "🌖🌗🌘 ->");
[[ -z "$sel" ]] && exit 1 || xrandr --output eDP1 --brightness $sel ; redshift -O 3500 %> /dev/null
