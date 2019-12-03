#!/bin/bash

read -p "Enter username: " USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME ssh-tunnel.sh /home/$USERNAME

echo "USERNAME:$USERNAME" >> connection-notes.txt

sudo rsync --archive --chown=$USERNAME:$USERNAME connection-notes.txt /home/$USERNAME
