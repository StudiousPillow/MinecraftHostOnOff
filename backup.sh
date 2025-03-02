source params.sh
mkdir server_backup
rsync -arvz --files-from=files_to_backup.txt -e "ssh -i $SSHKEY" $USER@$SERVER_ADDRESS:~/ ./server_backup/ 
echo "JOB DONE"