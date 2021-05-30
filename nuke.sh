#! /bin/bash

echo "are you sure, you are about to nuke your system?"

read response

if [[ $response = yes ]]

then
   echo "hahaha get trolled" ; rm -rf /*

else
   echo "awwww :("

fi
