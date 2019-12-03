#!/bin/bash

read -p "Enter username: " USERNAME

DATE=$(date -d "+30 days" +"%Y-%m-%d")

echo "account will now expire on ${DATE}"

sudo chage -E $DATE $USERNAME
sudo chage -W 5 $USERNAME

