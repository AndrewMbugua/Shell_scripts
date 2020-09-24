#!/bin/bash

#Check whether some of the important services are active
#Use switches
#call the funtion source file

source services.sh

echo "Options
1.networking.service
2.cron.service
3.bluetooth.service
4.dbus.service
5.NetworkManager.service
6.docker.service"

read -p "Choose an option:"

#network service 
if [[ $REPLY -eq 1 ]]
then
	networkServiceStatus
	fi
	#cron service
	if [[ $REPLY -eq 2 ]]
then
	cronServiceStatus
fi
	#bluetooth service
	if [[ $REPLY -eq 3 ]]
then
	bluetoothServiceStatus
	fi
	#dbus service
	if [[ $REPLY -eq 4 ]]
then
dbusServiceStatus
	
	fi
	#network manager
	if [[ $REPLY -eq 5 ]]
then
	networkManagerStatus
	fi
	#docker services
	if [[ $REPLY -eq 6 ]]
then
	dockerServiceStatus
	fi
	
	
	

