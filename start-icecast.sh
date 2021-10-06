#!/bin/bash

sudo -Eu icecast2 icecast2 -n -c /etc/icecast2/icecast.xml &

bash ./start-ices.sh
