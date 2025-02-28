#!/bin/bash
source params.sh 

## if the server is down, shutdown the server
if ! is_screen_running "$SCREEN_NAME"; then
    echo "Screen session $SCREEN_NAME is not running. Shutting down the computer..."
    sudo shutdown -h now
fi
