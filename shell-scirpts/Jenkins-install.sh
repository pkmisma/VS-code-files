#!/bin/bash

echo " This script will install jenkins"

sudo apt update && sudo apt install openjdk-11-jdk -y

echo "Start by importing the GPG key. The GPG key verifies package integrity but there is no output"

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc &gt; /dev/null

echo "Add the Jenkins software repository to the source list and provide the authentication key"

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list &gt; /dev/null

echo " Update and install Jenkins"

sudo apt update && sudo apt install jenkins -y

echo " check if the jenkins services is running"

sudo systemctl status jenkins | grep -i active