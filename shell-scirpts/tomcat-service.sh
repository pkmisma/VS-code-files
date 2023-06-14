#!bin/bash
  

echo " This script will check the Tomcat service and start it if stopped"

status=$(pidof nginx >/dev/null && echo "Service is running" || echo "Service NOT running")

if [[ "$status" = *NOT* ]]
then
  echo " The service is inactive"
  echo " Starting Tomcat service"
  sudo systemctl start nginx
else
 echo " The tomcat service is active"
fi


#less catalina.out | grep tomcat