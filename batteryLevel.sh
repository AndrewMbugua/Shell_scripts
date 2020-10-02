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

#The following Utilities are available in Linux to Check Battery Status.

    # 1. upower: upower is a command line tool which provides an interface to enumerate power sources on the system.
    # 2. acpi: acpi Shows information from the /proc or the /sys filesystem, such as battery status or thermal information.
    # 3. batstat: batstat is a command line tool to print battery status for linux.
    # 4. tlp: TLP brings you the benefits of advanced power management for Linux without changing any configuration.
    # 5. class file: The sysfs filesystem is a pseudo-filesystem which provides an interface to kernel data structures.
