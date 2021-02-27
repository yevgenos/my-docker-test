#!/bin/bash

#access_date=`cat /var/www/logs/usage.log`
#function reading_function {
#
#		for single_line in `cat /var/www/logs/usage.log | grep -oP '\[.*?\]' | awk -F' ' '{print $1 $2}'`
#		do
#			echo "read at: $line" > used_at.log
#			echo "read at: $single_line" >> used_at.log
#		done
#}

#reading_function

function read_at_function {

	cat /var/www/logs/usage.log > /etc/nginx/timerservice/timerservice_read_at.log
	sed -i -e 's/^/read at:/' /etc/nginx/timerservice/timerservice_read_at.log
}

read_at_function
