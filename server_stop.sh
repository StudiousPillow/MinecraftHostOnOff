#!/bin/bash

# Path to the screen session or terminal where the Minecraft server is running
# SCREEN_NAME="minecraft_server"
source params.sh

# Send the stop command to the server
screen -S $SCREEN_NAME -X stuff "stop$(printf \\r)"

## to kill session
## screen -S -X $SCREEN_NAME quit or kill or exit
## to see all sessions running
## screen -ls