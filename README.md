# Backup Solution

Scripts for backing up server both locally and remotely via cronjobs

**SSH public keys will need to be set up for the remote server part to work**


## Create folders
  
    mkdir <backup_folder> <backup_folder>/daily-backups <backup_folder>/weekly-backups <backup_folder>/monlthly-backups

## Cronjob example

    15 0 * * * sh <backup_script_folder>/backup-daily.sh 
    30 0 * * 1 sh <backup_script_folder>/backup-weekly.sh      
    45 0 1 * * sh <backup_script_folder>/backup-monthly.sh
