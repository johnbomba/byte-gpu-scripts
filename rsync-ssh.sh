#!/bin/bash

read -p "Enter username: " USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME ssh-tunnel.sh /home/$USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME connection-notes.txt /home/$USERNAME

sudo sed -i "s/<username>/$USERNAME/" /home/$USERNAME/connection-notes.txt

