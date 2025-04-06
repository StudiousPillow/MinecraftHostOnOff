source params.sh
mkdir server_backup
rsync -arvz --delete -e "ssh -i $SSHKEY" $USER@$SERVER_ADDRESS:./server/* ./server_backup/
date > server_backup_date.txt
echo "JOB DONE"