#!/bin/bash
set -e

sudo apt update
sudo apt install -y vim

echo "#---------------------------------------------------------------------------------------" >> $HOME/.bashrc
echo "alias reGrep='sh $HOME/.reGrep/reGrep.sh'" >> $HOME/.bashrc
echo "export FOLDER=$(cat $HOME/.reGrep/folderLocation.txt | grep -v '^#')" >> $HOME/.bashrc
echo "#---------------------------------------------------------------------------------------" >> $HOME/.bashrc

echo ''
echo "close and reopen you terminal then type"
echo "reGrep -h  or reGrep --help  to get started"
echo ''
sleep 5
