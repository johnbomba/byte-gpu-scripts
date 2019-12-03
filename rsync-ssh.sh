#!/bin/bash

read -p "Enter username: " USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME /home/byte/bin/ssh-tunnel.sh /home/$USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME /home/byte/bin/connection-notes.txt /home/$USERNAME

sudo rsync --archive --chown=$USERNAME:$USERNAME ~/STUDENT-README.md /home/$USERNAME

sudo sed -i "s/<username>/$USERNAME/" /home/$USERNAME/connection-notes.txt

sudo rm -f /home/$USERNAME/examples.desktop

