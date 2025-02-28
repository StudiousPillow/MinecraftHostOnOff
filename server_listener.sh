#!/bin/bash

# Port to listen on
# PORT=12345
source params.sh

# Command to execute when the signal is received
COMMAND="./server_stop.sh"

# Listen on the specified port
while true; do
    echo "Listening on port $PORT..."
    nc -l -p $PORT | while read line; do
        if [[ "$line" == "$STOP_MSG" ]]; then
            echo "Received stop signal. Executing command..."
            $COMMAND
            break 2  # Exit both the inner and outer loops to stop the script
        elif [[ "$line" == "$INJECT_MSG" ]]; then
            echo "Received inject signal. Injecting command into Minecraft server..."
            screen -S $SCREEN_NAME -X stuff "$INJECT_COMMAND$(printf \\r)"
        # screen -S $SCREEN_NAME -X stuff "stop$(printf \\r)"
    done
done