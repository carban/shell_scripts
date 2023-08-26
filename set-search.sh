#!/bin/sh
#Author: Carban

URLDUCK='https://duckduckgo.com/?q='
URL='https://google.com/search?q='
QUERY=$(echo "" | dmenu -fn 'consolas-16' -sb '#00ff00' -sf black -nb '#282828' -p "Search -> ")

if [ -n "$QUERY" ]; then
  xdg-open "${URL}${QUERY}" &> /dev/null &
fi
