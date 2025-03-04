#!/bin/bash
# java -Xmx1024M -Xms1024M -jar forge-1.21.4-54.1.0-shim.jar

source params.sh

## start the server in a screen session to easily stop it
cd server
if screen -ls | grep -q "\b$SCREEN_NAME\b"; then
    echo "Screen session $SCREEN_NAME already exists."
else
    echo creating screen $SCREEN_NAME
    screen -S $SCREEN_NAME -d -m java -Xmx1024M -Xms1024M \
 -jar $JAR_NAME nogui 
fi

cd ..
if screen -ls | grep -q "\bserver_listener\b"; then
    echo "Screen session server_listener already exists."
else
    echo creating screen server_listener
    screen -S server_listener -d -m bash server_listener.sh
fi

## to kill all sessions
# screen -ls | awk '/\t/{print $1}' | xargs -I {} screen -S {} -X quit