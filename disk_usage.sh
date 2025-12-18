#!/bin/bash


TH=20 

df -h | awk 'NR >1 { print $5 " " $6}' | while read usage mount
do 
	usage=${usage%\%}	
	if [ "$usage" -ge "$TH" ]; then
		echo "disk usage is very high $mount: $usage%"
	fi
done
 
