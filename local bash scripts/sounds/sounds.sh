#!/bin/bash


lowBattery=percentage 20%
upower -i `upower -e | grep 'BAT'` >> battery.txt

#display battery % only
grep -i "percentage" battery.txt >> percentage.txt

#Display the last lines of percentage file
cat percentage.txt | tail -1

#kinda wrong
if cat percentage.txt | tail -1 -eq $lowBattery
then
echo "yees"

fi

