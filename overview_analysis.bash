#!/bin/bash

echo "A tool that lists everything about your computer.

1. Disk usage df -h
2. Full vulnerability scan with lynis. lynis --pentest
3. Get and setup Pentbox tool for (Network tools,Crytographic tools etc)"

read -p "Choose an option:"


#This is the 1st option to check disk usage
if [[ $REPLY -eq 1 ]];
then
df -h

#option 2 - Lynis pentesting
elif [[ $REPLY -eq 2 ]];
 then
	lynis --pentest

#option 3 - Honey pot setup with pentbox
elif [[ $REPLY -eq 3 ]];
	then

#Get and setup Pentbox tool
eval "cd /root/"
wget http://downloads.sourceforge.net/project/pentbox18realised/pentbox-1.8.tar.gz

tar xvfz pentbox-1.8.tar.gz

eval "cd /root/pentbox-1.8 && ./pentbox.rb"





fi #Ending of the if statement