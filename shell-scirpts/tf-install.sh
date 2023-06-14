#!/bin/bash


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
