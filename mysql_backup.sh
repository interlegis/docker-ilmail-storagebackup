#!/bin/sh
echo "Backing up mail databases..."
echo "Dumping roundcube DB"
mysqldump -u root -p${MYSQL_ENV_MYSQL_ROOT_PASSWORD} -h mysql roundcube > /backup/db_roundcube_backup-$(date +"%Y-%m-%d_%H:%M").sql 2> /dev/null

echo "Dumping vimbadmin DB"
mysqldump -u root -p${MYSQL_ENV_MYSQL_ROOT_PASSWORD} -h mysql vimbadmin > /backup/db_vimbadmin_backup-$(date +"%Y-%m-%d_%H:%M").sql 2> /dev/null
