# Install
## Prerequisite

Have a linux server hosted somewhere with a 
- fixed public IP
- specific port open (firewall settings), usually ...
- volume size of at least ...
- 

The client side start script will depend on the host. It just needs to start the virtual cloud machine and the server will launch on startup.

## Server
Clone the git on the server and the client.

[Download](https://files.minecraftforge.net/net/minecraftforge/forge) and launch the installer

Put the exact name of the jar file created in params.sh (for server_start.sh).

Change the "false" to "true" in the eula.txt.

Modify the minecraft_server.service to have the right filepaths then copy it to /etc/systemd/system/minecraft_server.service
then run 
sudo systemctl daemon-reload
sudo systemctl enable minecraft_server.service
Now it will automatically start the server when the instance is started.

# Usage

Use client_start.sh on your local computer. And when done use client_stop, then client_shutdown.

To put in commands in the server, use client_command.

## Parameters

Remove or add people to black and whitelists, add more memory in start_server.sh, 


# Links
[The mineraft forge server](https://files.minecraftforge.net/net/minecraftforge/forge/) (use the version you need for your mods)

[A good place to find mods](https://www.curseforge.com/minecraft) (Careful look for which version it is available, and which dependencies it has)