#!/usr/bin/env bash

timestamp=$(date '+%Y%m%d_%H%M%S')
if [ ! -f heart_rate_log.txt ]; then
	echo "The file doesn't exit"
else
	mv heart_rate_log.txt "heart_rate_log.txt_$timestamp"
	echo "Log file archived as heart_rate_log.txt_$timestamp"

fi
