#!/bin/bash

# This script is to backup web file of apache.

# Declare some quantities.

# backup time
date="$(date +%Y%m%d)"
month="$(date +%m)"
year="$(date +%Y)"

# backup file (.tar.gz)
bak_file="httpd_baks_"$date".tar.gz"

# backup folder
bak_folder="/home/backup/"$year"-"$month""

#log file(only mask the error)
log_error=".apache_bak_err.log"

# web file folder
apache_folder="/var/www/"

# This if-else will tell us that the backup folder exists or not.
# If not, the folder will be created.
if [ ! -d "$bak_folder" ]; then
	mkdir -p "$bak_folder"
fi

# backup excution
# mark the time in the err log file
echo -e "$(date)\n" >>$bak_folder/$log_error
tar -Pzcf $bak_folder/$bak_file $apache_folder 1>>/dev/null 2>>$bak_folder/$log_error

# EOF
