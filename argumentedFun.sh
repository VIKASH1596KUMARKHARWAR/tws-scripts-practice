#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <password>"
    exit 1
fi

username=$1
password=$2

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "Error: User '$username' already exists."
    exit 1
fi

# Create the user
sudo useradd -m "$username"

# Set the password for the user
echo "$username:$password" | sudo chpasswd

echo "User '$username' created successfully!"

