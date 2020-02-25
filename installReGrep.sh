#!/bin/bash
set -e

sudo apt update
sudo apt install -y vim

chmod 744 reGrep.sh
chmod 664 folderLocation.txt

echo "---------------------------------------------------------------------------------------"
echo "alias reGrep='sh $HOME/.reGrep/reGrep.sh'" >> $HOME/.bashrc
echo "export FOLDER=source $HOME/.reGrep/folderLocation.txt | grep -v '^#'" >> $HOME/.bashrc
echo "alias setFolder='vim $HOME/.reGrep/folderLocation.txt"

echo "---------------------------------------------------------------------------------------"
source $HOME/.bashrc
echo "type reGrep hello (search for 'hello' using recursive-grep)"
sleep 4
