#!/bin/bash

#check the process id of the stated application
echo "Enter application name"
while read line
do 
echo -n "Running PID of application $line:"
pidof $line

done
