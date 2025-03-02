source params.sh
mkdir server_backup
rsync -arvz --delete -e "ssh -i $SSHKEY" ./server_backup/ $USER@$SERVER_ADDRESS:./server
echo "JOB DONE"