#!/bin/bash

env

set -x

set_val_ices() {
    if [ -n "$2" ]; then
        echo "set '$2' to '$1'"
        sed -i "s/<$2>[^<]*<\/$2>/<$2>$1<\/$2>/g" /ices.xml
    else
        echo "Setting for '$1' is missing, skipping." >&2
    fi
}

set_val() {
    if [ -n "$2" ]; then
        echo "set '$2' to '$1'"
        sed -i "s/<$2>[^<]*<\/$2>/<$2>$1<\/$2>/g" /etc/icecast2/icecast.xml
    else
        echo "Setting for '$1' is missing, skipping." >&2
    fi
}

# TB Added in future - will change how this is processed.
# set_val $ICES_GENRE genre
# set_val $ICES_DESC description
# set_val $ICES_PORT port
set_val_ices $ICES_NAME name
# set_val_ices $ICES_HOSTNAME hostname
# set_val_ices $ICES_PASSWORD password
# set_val $ICECAST_SOURCE_PASSWORD source-password
# set_val $ICECAST_RELAY_PASSWORD  relay-password
set_val $ICECAST_ADMIN_PASSWORD  admin-password
set_val $ICECAST_ADMIN_USER  admin-user
set_val $ICECAST_ADMIN_EMAIL  admin
# set_val $ICECAST_PASSWORD password
# set_val $ICECAST_HOSTNAME hostname

set -e

sudo -Eu icecast2 icecast2 -n -c /etc/icecast2/icecast.xml &

bash ./start-ices.sh
