#! /bin/bash

# basic sketch
      	
while : 
do

	if [[ $(acpi | grep 'Discharging') ]]

	then i3-nagbar -t warning -m 'CHARGER IS UNPLUGGED' 

	#else sleep 1

	fi	
done



# testing


# Junk

#acpi > ~/projects/testing/battinfo
#if [[ $(cat /home/buket/projects/testing/battinfo | grep 'Discharging') ]]


#if [[ $(acpi | grep 'Discharging') ]]

#then i3-nagbar -t warning -m 'CHARGER IS UNPLUGGED' &

#while true; do
 
