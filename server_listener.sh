#!/bin/bash
source params.sh ## to import the PORT and SCREEN_NAME

# Listen for incoming SSH connections
while true; do
    echo "Listening on port $LISTEN_PORT..."
    nc -l -p $LISTEN_PORT | while read line; do
        # Execute the received command
        screen -S $SCREEN_NAME -X stuff "$line$(printf \\r)"
    done
done