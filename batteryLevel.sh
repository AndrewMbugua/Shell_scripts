#!/bin/bash
#THIS IS AN INCOMPLETE SCRIPT!
#Another simple alternative would be to use ACPI by sudo apt-get install acpi

#This tries to display battery level and tell you the exact level its in

lowBattery=percentage 20%
upower -i `upower -e | grep 'BAT'` >> battery.txt

#display battery % only
grep -i "percentage" battery.txt >> percentage.txt

#Display the last lines of percentage file
cat percentage.txt | tail -1

#testing testing ,this is kinda wrong 
if cat percentage.txt | tail -1 -eq $lowBattery
then
echo "yees"

fi
