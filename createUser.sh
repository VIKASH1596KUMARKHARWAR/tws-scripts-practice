#!/bin/bash

<<help 

 this is a shell script 
to create a user 

help

echo "======== creation of the User Started=========="

read -p "enter the username: " username 
read -p "enter the password: " password

sudo useradd -m  "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "======== creation of the User Ended=========="


