#!/bin/bash

# Port to listen on
PORT=12345

# Command to execute when the signal is received
COMMAND="./server_stop.sh"

# Listen on the specified port
while true; do
    echo "Listening on port $PORT..."
    nc -l -p $PORT | while read line; do
        if [[ "$line" == "STOP_SERVER" ]]; then
            echo "Received stop signal. Executing command..."
            $COMMAND
        fi
    done
done