#!/bin/bash
#searching for a file after specifying a filepath

read -p "Enter file name:"
filename=$REPLY

read -p "Enter path for search:"path
echo "Filename matches to:"

find $path -name $filename
