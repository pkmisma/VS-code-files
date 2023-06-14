#!/bin/bash


sudo su
sudo useradd admin
sudo echo "admin:admin" | chpasswd
sudo usermod -aG wheel admin

sudo sed -i '107 {s/^/#/}' /etc/sudoers
sudo sed -i '110 {s/#//}' /etc/sudoers


sudo sed -i '40 {s/#PermitRootLogin prohibit-password/PermitRootLogin yes/}' /etc/ssh/sshd_config
sudo sed -i '65 {s/#//}' /etc/ssh/sshd_config

sudo systemctl restart sshd

