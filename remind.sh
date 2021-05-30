#! /bin/bash

echo "What would you like to be reminded of?"

read reminder

echo "ok, when (use d for days, h for hours, and m for minutes)"

read time

sleep $time && i3-nagbar -t warning -m $reminder &
