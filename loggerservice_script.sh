#!/bin/bash

docker container attach timerservice
tail -f /var/www/logs/usage.log
