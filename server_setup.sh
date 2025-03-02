source params.sh

# install java
sudo apt install -y openjdk-21-jre 

# launch the installer
java -jar $JAR_INSTALLER --installServer

# create eula with true
echo "eula=true #https://aka.ms/MinecraftEULA" > eula.txt

# autostart the server on startup of the machine
# create /etc/systemd/system/minecraft_server.service
# enable and reload
