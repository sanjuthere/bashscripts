#!/bin/bash
ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
   echo "Httpd process is running"
else
   echo "Httpd process is NOT Running"
   echo "Starting the Process"
   systemctl start httpd
   if [ $? -eq 0 ]
   then 
      echo "Process Started successfully."
   else
      echo "Process Starting failed, contact admin. "
   fi
fi
echo "#################################################"
echo
   
