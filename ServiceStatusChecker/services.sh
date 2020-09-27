#!/bin/bash

#funtions to check active services
#Jobs to check #networking.service,cron.service,bluetooth.service
#dbus.service,NetworkManager.service,docker.service

listAllStatus(){
	sudo systemctl status -l
}

networkServiceStatus(){
	
	 systemctl status -l networking.service
}
networkManagerStatus(){
     systemctl status -l NetworkManager.service
}


cronServiceStatus(){
	 systemctl status -l cron.service
}

bluetoothServiceStatus(){
     systemctl status -l bluetooth.service
}

dbusServiceStatus(){
	systemctl status -l dbus.service
}


dockerServiceStatus(){
	systemctl status -l docker.service
}

nginxServiceStatus(){
	systemctl status -l nginx.service
}
sshService(){
	sudo systemctl status -l ssh.service
}
