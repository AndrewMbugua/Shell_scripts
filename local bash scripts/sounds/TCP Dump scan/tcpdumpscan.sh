#!/bin/bash

#Author Andrew Mbugua
#Does a tcpdum scan and saves it to a txt file
#Scan txt file for ip addresses
#tcpdump , which is a most powerful and widely used command-line
# packets sniffer or package analyzer tool available on linux.
#5 second countdown,press ok to continue
(for i in $(seq 0 10 50); do echo $i; sleep 1; done) | zenity --progress --title "Capturing beginning soon..." 

sudo tcpdump icmp >> txt.txt && 

#filter for ip addresses
cat txt.txt | grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}" >> addresses.txt

