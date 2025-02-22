#!/bin/bash

# Server address and port
SERVER_ADDRESS="localhost"
PORT=12345

# Signal to send
SIGNAL="STOP_SERVER"

# Send the signal to the server
echo $SIGNAL | nc $SERVER_ADDRESS $PORT