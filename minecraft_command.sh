#!/bin/bash
source params.sh

# Check if a command is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <command_to_give_minecraft_server>"
    exit 1
fi

# Command to send
COMMAND="$1"

# Send the command to the remote server
echo "Sending command: $COMMAND"
ssh $USER@$SERVER_ADDRESS -i $SSHKEY "echo -e '$COMMAND\n' | nc localhost $LISTEN_PORT"