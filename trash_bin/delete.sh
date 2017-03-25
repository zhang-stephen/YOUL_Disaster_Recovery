#!/bin/bash

# This is a scripts to accomplish features of Trash Bin
# If you want not to delete important data by mistake, you'd batter use this

# Time 
date="$(date +%Y%m%d)"

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
	echo -e "If this options contain -f, then the script will exec \"rm\" directly\n"
fi

# If options contain the -f, delete the file by rm
while getopts "bhdfiPRrvW" opt
	do 
		case $opt in
			f) 
				exec "$realrm" $@
				;;
			b)
				mv $@ "$Trash_Bin/"
				;;
			h)
				echo -e "Usage: move file/folder to Trash Bin"
				echo -e "delete -b file/folder [file1/folder1...] -> mv file/folder trash_bin_folder"
				echo -e "delete -d empty_folder -> rm -d empty_folder"
				echo -e "delete -f file -> rm -f file"
				echo -e "delete -h -> View the Help information"
				echo -e "delete -R folder -> rm -R folder"
				echo -e "delete -r folder -> rm -r folder"
				;;
		esac
	done
 
# Ask user is sure to delete files
#echo -ne "Are you sure you want to move the files to the Trash? [Y/N]:\a"
#if [ $reply="y" -o $reply="Y" ]; then
#	mv $file $Trash_Bin/$date_$file
#fi
