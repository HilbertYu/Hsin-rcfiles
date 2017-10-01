#!/bin/bash

cd /media
#sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) VBoxExchange /media/sf_VBoxExchange/
sudo mount -t vboxsf -o uid=1000,gid=999 VBoxExchange /media/sf_VBoxExchange/

