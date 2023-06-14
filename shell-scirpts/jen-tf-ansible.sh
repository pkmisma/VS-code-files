!#/bin/bash


echo "This script will install ansible"

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

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

echo " Update and ensure to have gnup software "

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

echo "Install Hashicorp GPGkey"

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg


echo "Verify key finger print"

gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint

echo "Add the offical repo"

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

echo " Update again and install terraform "

sudo apt-get update -y && sudo apt-get install terraform -y


echo " Here is the TF version"

terraform -version
