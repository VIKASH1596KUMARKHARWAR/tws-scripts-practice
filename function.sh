#!/bin/bash

<<info
This script creates a new user, checks if the user already exists, 
sets a password, and confirms successful creation.
info

function create_user {
    read -p "Enter the username: " username
    read -s -p "Enter the password: " password
    echo
    
    # Check if user already exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
        return 1
    fi
    
    # Create the user
    sudo useradd -m -s /bin/bash "$username"
    
    # Set password
    echo "$username:$password" | sudo chpasswd
    
    if [ $? -eq 0 ]; then
        echo "User '$username' created successfully."
    else
        echo "Failed to create user '$username'."
    fi
}

create_user

