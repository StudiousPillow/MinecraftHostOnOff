#!/bin/bash
# Path to the screen session or terminal where the Minecraft server is running
SCREEN_NAME="minecraft_server"

# Send the stop command to the server
screen -S $SCREEN_NAME -X stuff "stop$(printf \\r)"