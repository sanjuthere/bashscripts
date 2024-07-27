#!/bin/bash

USR="vagrant"
ART="multios_websetup.sh"
for host in `cat remhosts`
do
   echo "##################################"
   echo "Connecting to $host"
   scp  $ART $USR@$host:/tmp/
   echo "Executing the script on $host"
   ssh $USR@$host sudo /tmp/$ART
   echo "##################################"
done
