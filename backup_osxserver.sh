#!/bin/sh

/Applications/Server.app/Contents/ServerRoot/usr/sbin/serveradmin settings all > /private/var/root/server_backup/settings

/usr/bin/rsync -avz --protocol=26 -e "ssh -p 8227 -i /Users/admin/.ssh/id_rsa -o StrictHostKeyChecking=no" /private/var/root/server_backup nmcspadden@10.1.10.10:~/existing_services/osxserver