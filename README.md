# Usage
## Prerequisite

Have a linux server hosted somewhere with a fixed IP and a specific port open. 

The client side start script will depend on the host. It just needs to start the virtual cloud machine and the server will launch on startup.

## Server
Clone the git on the server

[Download](https://files.minecraftforge.net/net/minecraftforge/forge) and launch the installer

Put the exact name of the jar file created in server_start.sh

Change the "false" to "true" in the eula.txt

Modify the minecraft_server.service to have the right filepaths then copy it to /etc/systemd/system/minecraft_server.service
then run 
sudo systemctl daemon-reload
sudo systemctl enable minecraft_server.service



## Parameters

Remove or add people to black and whitelists, add more memory in start_server.sh, 


# Links
[The mineraft forge server](https://files.minecraftforge.net/net/minecraftforge/forge/) (use the version you need for your mods)

[A good place to find mods](https://www.curseforge.com/minecraft) (Careful look for which version it is available, and which dependencies it has)