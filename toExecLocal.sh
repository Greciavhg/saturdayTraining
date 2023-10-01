#!/bin/bash
#Variables
source_file="serverip.csv"
server_user="admin"
key_name="ubuntuServers.pem"
currentDate="$(date +"%m-%d_%Y_%N")"
tmpfolder="/tmp"
while IFS=',' read -r ipdir
do

   # echo "copiando al server $ipdir"
    echo sudo scp -i $key_name pruebalogs.sh $server_user@$ipdir:/tmp
    # sudo scp -i ubuntuServers.pem admin@3.95.161.64:/tmp
    #echo "conectado al server $ipdir"
    #ssh -i $key_name $server_user@$ipdir
    # ssh -i ubuntuServers.pem admin@3.95.161.64



echo $ipdir
done < "$source_file"
