#!/usr/bin/env bash

read -p "enter Device name: " device_name
logFile="heart_rate_log.txt"

while true; do
	Timestamp=$( date "+%Y-%m-%d %H:%M:%S")
	Simulatedrate=$(( RANDOM % 40 + 60))
	echo "$Timestamp $device_name $Simulatedrate" >> $logFile
	sleep 1
done &
echo "process ID $!"

