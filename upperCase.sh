#!/bin/bash
#lowercase to uppercase funtion 

upperCase()
{
if [ $# -eq 1 ]
then
echo $1 | tr '[a-z]' '[A-Z]'
fi
}

#tests
upperCase hello
upperCase linux shell scripting
