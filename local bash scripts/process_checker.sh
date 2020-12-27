#!/bin/bash

#count processes and saves to txt file
ps -A | wc -l >> process.txt

#plot with gnuplot
gnuplot -p -e "plot 'process.txt'"

#watch -n 10 process_checker.sh
