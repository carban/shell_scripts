#!/bin/sh
#Author: Carban

sel=$(seq 0.1 0.05 1.0 | dmenu -fn 'Ubuntu-18' -sb orange -sf black -p "🌖🌗🌘 ->");
[[ -z "$sel" ]] || xrandr --output eDP1 --brightness $sel | redshift -O 3500 %> /dev/null
