#!/bin/bash
symbol="¯\\\_(ツ)_/¯"
alertvalue="29" #string
alertvalue2="10" #string
percentage=`acpi | awk -F'[ %]+' '{print $4}'` #Despues de separar la cuarta columna utilizo -F para que todo lo que este despues de % se retire
state=`acpi | awk -F'[ ,]+' '{print $3}'`
echo ${percentage}
if [[ ${percentage} = $alertvalue && ${state} = 'Discharging' ]]; then #se necesita doble [] para hacer operaciones && ||
	command=`notify-send -i /home/carban/symb/alert.ico Low_Battery! ${symbol}`
elif [[ ${percentage} = $alertvalue2 && ${state} = 'Discharging' ]]; then
	command=`notify-send -i /home/carban/symb/alert.ico Low_Battery! ${symbol}`
fi
