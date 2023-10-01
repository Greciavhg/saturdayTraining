#!/bin/bash
#Variables
srcfl="serverip.csv"
srvusr="admin@"
knm="ubuntuServers.pem"
cdt="$(date +"%m-%d_%Y_%N")"
tmpf=':/tmp/'
fltu="pruebalogs.sh"

while IFS=',' read -r ipdir fldr
do
     #echo "copiando el file a $ipdir"

    
    cmd="sudo scp -i $knm $fltu $srvusr$ipdir$fldr"
    #cmd="sudo scp -i $knm $fltu $srvusr$ipdir$tmpf" 
     
     #cmd="sudo scp -i "ubuntuServers.pem" pruebalogs.sh admin@3.91.184.172:/tmp"

     echo $cmd
     #$cmd

    #ssh -i $knm $srvusr@$ipdir
    #ls -lh /tmp/

done < "$srcfl"