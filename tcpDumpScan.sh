#!/bin/bash

#Does a tcpdum scan and saves it to a txt file
#Scan txt file for ip addresses
#tcpdump , which is a most powerful and widely used command-line
# packets sniffer or package analyzer tool available on linux.

tcpdump icmp > txt.txt | cat txt.txt | grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}"

