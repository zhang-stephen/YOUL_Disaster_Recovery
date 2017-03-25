#!/bin/bash

# This is a scripts to accomplish features of Trash Bin
# If you want not to delete important data by mistake, you'd batter use this

# Time 
Time="$(date +%Y%m%d_%H_%M_%S)"

# Trash Bin Folder
Trash_Bin="/home/.trash/delete"
del_log="trash_bin_deleted.log"

# Command rm
realrm="/bin/rm"

# This if-else will tell us the folder exists or not.
# If not, the folder will be created.
if [ ! -d "$Trash_Bin" ]; then
	mkdir -p "$Trash_Bin"
	chmod -R 777 "$Trash_Bin"
fi

# If no option follows this command delete, then outputs these.
if [ $# -eq 0 ]; then
	echo "Usage: delete file0 [file1 file2...]"
	echo -e "If this options contain -f, then the script will exec \"rm\" directly"
fi

# If options contain the -f, delete the file by rm
while getopts "bfhiRrt" opt
	do 
		case $opt in
			f) 
				exec "$realrm" $@
				;;
			*)
				# do nothing.
		esac
	done
 
# Ask user is sure to delete files
echo -ne "Are you sure you want to move the files to the Trash? [Y/N]:\a"
read reply
if [ $reply="y" -o $reply="Y" ]; then
	mv -i $@ $Trash_Bin/$Time_$file
fi

# Create log file to mask the all infomation of the deleted files
# Absolute Path
# Delete Time
# etc.

# EOF
