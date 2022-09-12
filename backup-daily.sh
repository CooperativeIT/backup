#!/bin/bash

# format:
# sh backup-daily.sh source backup_folder remote_user remote_server remote_path

source=$1
backup_folder=$2
remote_user=$3
remote_server=$4
remote_path=$5

# tar files with date prefix as name
tar -zcf $backup_folder/daily-backups/$(date +%Y%m%d)-backup.tar.gz $source

# finds files older than 7 days and deletes
find $backup_folder/daily-backups/* -mtime +7 -delete

# syncs backup folder with remote server
rsync -a --delete $backup_folder $remote_user@$remote_server:$remote_path