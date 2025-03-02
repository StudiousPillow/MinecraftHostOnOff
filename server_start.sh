#!/bin/bash
# java -Xmx1024M -Xms1024M -jar forge-1.21.4-54.1.0-shim.jar

source params.sh

## start the server in a screen session to easily stop it
screen -S $SCREEN_NAME -d -m java -Xmx1024M -Xms1024M \
 -jar $JAR_NAME nogui 

screen -S server_listener -d -m bash server_listener.sh