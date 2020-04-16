#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install nss-wrapper to be able to execute image as non-root user"
apt-get update 
apt-get install -y libnss-wrapper gettext
apt-get clean -y

echo "add 'source generate_container_user' to .bashrc"

# have to be added to hold all env vars correctly
echo 'source $STARTUPDIR/generate_container_user' >> $HOME/.bashrc

cat /root/.bashrc >> $HOME/.bashrc
echo 'alias cp="cp -r"' >> $HOME/.bashrc
echo 'alias change="chown -R 1000 ~ & chgrp -R 1000 ~"' >> $HOME/.bashrc