source params.sh
mkdir server_backup
rsync -arvz --delete -e "ssh -i $SSHKEY" $USER@$SERVER_ADDRESS:./server ./server_backup/ 
echo "JOB DONE"