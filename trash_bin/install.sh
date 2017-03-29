#!/bin/bash

# Output some information

# Declare some paremeters
install_path="/bin"

# Check the user permission
# If this user is Root, the script will be executed.
# If not, the script will exit.
if [ $UID != 0 ]; then
    echo "You need root access to run it!"
    exit 1
else
    echo "The Trash Bin is being installed!"
    # Give scripts execution permission
    chmod +x ./*
    # Copy scripts to /bin/
    cp -p ./* $install_path
    echo "Completed!"
fi 

# EOF
