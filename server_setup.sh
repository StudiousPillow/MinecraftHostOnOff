source params.sh

sudo ufw allow $SERVER_PORT
sudo ufw allow $LISTEN_PORT

# install java
sudo apt install -y openjdk-21-jre 


cd server
# launch the installer
java -jar $JAR_INSTALLER --installServer

# create eula with true
echo "eula=true #https://aka.ms/MinecraftEULA" > eula.txt


cd ..
# autostart the server on startup of the machine
# /etc/systemd/system/minecraft_server.service
cp minecraft_server.service /etc/systemd/system/
# enable and reload
sudo systemctl daemon-reload
sudo systemctl enable minecraft_server.service