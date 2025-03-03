source params.sh

sudo ufw allow $SERVER_PORT
sudo ufw allow $LISTEN_PORT

chmod +x server_start.sh
# autostart the server on startup of the machine
# /etc/systemd/system/minecraft_server.service
# cp minecraft_server.service /etc/systemd/system/
# # enable and reload
# sudo systemctl daemon-reload
# sudo systemctl enable minecraft_server.service