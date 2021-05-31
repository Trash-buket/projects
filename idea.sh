#! /bin/bash

clear && ls -l --color=auto ~/ideas || exit

echo "What would you like to do? (type help to show working commands)"

read response

if [[ $response = rm ]]

then
	echo "What idea would you like to remove"
	read rmresponse
	rm -r ~/ideas/$rmresponse && echo "The idea is removed" || echo "There isn't a idea with that name" && exit


elif [[ $response = mk ]]
then
	echo "What is the name of this idea?"
	read ideaname
	echo "Ok cool, what is the description?"
	read ideadesc
	echo $ideadesc > ~/ideas/$ideaname && echo "Nice, your idea is saved in your idea directory"


elif [[ $response = show ]]
then
	echo "what idea would you like to show?"
	read showidea
	cat ~/ideas/$showidea && sleep 5 && exec ~/projects/idea.sh


elif [[ $response = exit ]]
then
	echo "you could also use ctrl+c" && exit


elif [[ $response = edit ]]
then
	echo "what idea would you like to edit?"
	read editresponse
	vim ~/ideas/$editresponse


elif [[ $response = help ]]
then
	echo "mk to make a idea, rm to remove a idea, edit to edit a idea (by default uses vim), show to read a idea and exit to exit" && sleep 5 && exec ~/projects/idea.sh



else echo "please use a working command" && exit

fi
