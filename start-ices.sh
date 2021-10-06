#!/bin/bash
sudo mkdir -p /var/log/ices
sudo touch /var/log/ices/ices.log

find /media -type f -name "*.ogg" > /playlist.txt

sudo ices2 /ices.xml
