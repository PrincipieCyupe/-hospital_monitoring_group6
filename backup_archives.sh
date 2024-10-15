#!/usr/bin/env bash
remote_host="a78949de3988.a5efec7a.alu-cod.online" 
remote_user="a78949de3988"   
remote_dir="/home/"
archLog="archived_logs_group6"
if [ ! -d $archLog ]; then
	mkdir $archLog
	echo "the directory was created"
fi
mv heart_rate_log.txt_* "$archLog/"
scp -r $archLog "$remote_user@$remote_host:$remote_dir"
echo "back-ups are succesful!"
