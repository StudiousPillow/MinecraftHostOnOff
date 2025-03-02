#client
SERVER_PORT="25565" ## to connect to minecraft server
## to send commands through ssh
SERVER_ADDRESS="localhost" # and connect to the server  <----------------------<----------------------
USER="ubuntu" # <----------------------<----------------------<----------------------<----------------------
SSHKEY="sshkey/privatekey" # <----------------------<----------------------<----------------------

#server
JAR_INSTALLER='forge-1.21.4-54.1.0-installer.jar' # to install the server <----------------------<----------------------
JAR_NAME=${JAR_INSTALLER/installer/shim} # to launch the server
SCREEN_NAME="minecraft_server"

#both
LISTEN_PORT="56552" ## to send commands  