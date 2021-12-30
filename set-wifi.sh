#!/bin/sh
#Author: Carban

# Selecting ssid name, it's possible find ssid names with spaces, that's why I put -F"  " spliting by two spaces
ssid=$(nmcli device wifi list | cut -b 9- | dmenu -fn 'consolas-16' -sb '#b16286' -sf black -nb '#282828' -p "Select WiFi -> " -l 10 | awk -F"  " '{print $1}')
if [ ! -z "$ssid" ]; then

	# Validating the name
	[[ "$ssid" == "SSID" ]] && echo "Select a valid wifi name" && exit 1

	# Writing the password
	password=$(echo "" | dmenu -fn 'consolas-16' -sb '#b16286' -sf black -nb '#282828' -p "Enter Password for the SSID: $ssid -> ")

	[[ -z "$password" ]] && exit 1

	# Making connection
	conn=$(nmcli device wifi connect "$ssid" password "$password")
	
	echo "$conn"  

	if ping -q -c 2 -W 2 8.8.8.8 >/dev/null; then
    notify-send -i "network-wireless-symbolic64x64" "Your internet is working 😀"
  else
    notify-send -i "network-wireless-symbolic64x64" "Your internet is not working 😦"
  fi


fi
