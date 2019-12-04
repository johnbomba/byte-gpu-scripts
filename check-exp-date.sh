#!/bin/bash

read -p "enter a username: " USERNAME
sudo chage -l $USERNAME
