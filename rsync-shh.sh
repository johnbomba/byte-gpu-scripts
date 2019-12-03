#!/bin/bash

read -p "Enter username: " USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME ssh-tunnel.sh /home/$USERNAME
