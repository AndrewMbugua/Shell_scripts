#!/bin/bash
#To run this you have to have root privileges

#This aims to use the tool Petbox to automate the Pentbox tool setups

#Log in to your Kali Linux machine as an admin user. Open a terminal window. 
#Fetch the tool
#save and run in root folder

eval "cd /root/"
eval "wget http://downloads.sourceforge.net/project/pentbox18realised/pentbox-1.8.tar.gz"

eval "tar xvfz pentbox-1.8.tar.gz"

eval "cd /root/pentbox-1.8 && ./pentbox.rb"

![pentbox tool](https://github.com/AndrewMbugua/Shell_scripts/blob/master/pentbox.png)





This idea was obtained from Techrepublic- How to quickly deploy a honeypot with Kali Linux
