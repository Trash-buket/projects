#! /bin/bash

# basic sketch
      	
while : 
do

	if [[ $(acpi | grep 'Discharging') ]]

	then i3-nagbar -t warning -m 'CHARGER IS UNPLUGGED' 

	#else sleep 1

	fi	
done
