#! /bin/bash

ls -al --color=auto ~/ideas || exit

echo "What would you like to do? (rmidea to remove a idea and mkidea to make one)"

read response

if [[ $response = rmidea ]]

then
	echo "What idea would you like to remove"
	read rmresponse
	rm -r ~/ideas/$rmresponse && echo "The idea is removed" || echo "There isn't a idea with that name" && exit


elif [[ $response = mkidea ]]
then
	echo "What is the name of this idea?"
	read ideaname
	echo "Ok cool, what is the description?"
	read ideadesc
	echo $ideadesc > ~/ideas/$ideaname && echo "Nice, your idea is saved in your idea directory"

else exit

fi
