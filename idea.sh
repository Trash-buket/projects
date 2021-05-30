#! /bin/bash

echo "what is your idea"

read idea

echo "Ok cool, Whats the description"

read desc

echo $desc > /home/buket/ideas/$idea

echo "nice, your idea is saved in ideas directory (~/ideas)"
