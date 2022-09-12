# Backup Solution

Scripts for backing up server both locally and remotely via cronjobs

**SSH public keys will need to be set up for the remote server part to work**

## Create folders
  
    mkdir <backup_folder> <backup_folder>/daily-backups <backup_folder>/weekly-backups <backup_folder>/monlthly-backups

## Usage

    sh <script_name>.sh source backup_folder remote_user remote_server remote_path

## Cronjob example

    15 0 * * * sh <backup_script_folder>/backup-daily.sh source backup_folder remote_user remote_server remote_path 
    30 0 * * 1 sh <backup_script_folder>/backup-weekly.sh source backup_folder remote_user remote_server remote_path      
    45 0 1 * * sh <backup_script_folder>/backup-monthly.sh source backup_folder remote_user remote_server remote_path

