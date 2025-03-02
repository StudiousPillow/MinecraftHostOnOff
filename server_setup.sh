source params.sh

# install java
sudo apt install -y openjdk-21-jre 

# launch the installer
java -jar $JAR_INSTALLER --installServer

# create eula with true
echo "eula=true #https://aka.ms/MinecraftEULA" > eula.txt

# autostart the server on startup of the machine
# /etc/systemd/system/minecraft_server.service
cp minecraft_server.service /etc/systemd/system/
# enable and reload
sudo systemctl daemon-reload
sudo systemctl enable minecraft_server.service