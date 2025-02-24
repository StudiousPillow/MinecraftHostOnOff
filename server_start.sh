#!/bin/bash
# java -Xmx1024M -Xms1024M -jar forge-1.21.4-54.1.0-shim.jar

# SCREEN_NAME="minecraft_server" # needs to be the same as in server_stop.sh
# JAR_NAME='forge-1.21.4-54.1.0-shim.jar' # replace with the right filename
source params.sh

## start the server in a screen session to easily stop it
screen -S $SCREEN_NAME -d -m java -Xmx1024M -Xms1024M \
 -jar $JAR_NAME nogui 