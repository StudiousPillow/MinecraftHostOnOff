source params.sh

# install java
sudo apt install -y openjdk-21-jre 

mkdir server
cd server
# launch the installer
java -jar $JAR_INSTALLER --installServer

# create eula with true
echo "eula=true #https://aka.ms/MinecraftEULA" > eula.txt