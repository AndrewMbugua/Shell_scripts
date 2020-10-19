#!/bin/bash

#Check whether some of the important services are active
#used if statements
#call the funtion source file

source services.sh

echo "Options
0.list all of the services
1.networking.service
2.cron.service
3.bluetooth.service
4.dbus.service
5.NetworkManager.service
6.docker.service
7.nginx server nginx.service
8.ssh service"

read -p "Choose an option:"

#List all services
if [[ $REPLY -eq 0 ]]
then
listAllStatus
fi

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
	
	#nginx server
	if [[ $REPLY -eq 7 ]]
	then
	nginxServiceStatus
	fi
	
	#ssh service
	if [[ $REPLY -eq 8 ]]
	then
	sshService
	fi
	
	#error message with zenity
	if [[ $REPLY -gt 8 ]]
	then
	zenity --error --width 300 --text "The option you chose is not available"
	fi
	
