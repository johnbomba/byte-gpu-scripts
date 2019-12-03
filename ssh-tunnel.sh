#!/bin/bash

# ssh tunnel to run jupyter notebook on a remote server
# https://www.digitalocean.com/community/tutorials/how-to-install-run-connect-to-jupyter-notebook-on-remote-server

if [ $# -ne 2 ];
    then
    echo "Usage: ./ssh-tunnel.sh <username> <server_ip>"
elif [ $1 == -h ];
    then
    echo "Usage: ./ssh-tunnel.sh <username> <server_ip>"
else
    ssh -L 8000:localhost:8888 $1"@"$2
fi

# this is what is should look like
# ssh -L 8000:localhost:8888 your_name@your_server_ip
