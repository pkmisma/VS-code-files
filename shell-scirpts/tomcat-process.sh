#!bin/bash


echo " This script will check the Tomcat service and start it if stopped"

echo "Checking the PID of tomcat server"

pid=$(ps aux | grep org.apache.catalina.startup.Bootstrap | grep -v grep | awk '{ print $2 }')

if [ -z "$pid" ]
then
 echo "Tomcat process is not running"
else
 echo " This is the process id $pid of tomcat server"
fi

tail -10 /opt/tomcat/apache-tomcat-9.0.69/logs/catalina.out | grep -i deploying