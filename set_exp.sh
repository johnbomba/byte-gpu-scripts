#!/bin/bash

read -p "Enter username: " USERNAME

DATE=$(date -d "+45 days" +"%Y-%m-%d")

echo "account will expire on ${DATE}"

sudo chage -E $DATE $USERNAME
sudo chage -W 5 $USERNAME

