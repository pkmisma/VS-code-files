

sudo apt get update -y

sudo swapoff -a

sudo sed -i '/ip_forward/s/^#//g' /etc/sysctl.confsudo apt install docker.io

sudo sysctl -p

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

sudo apt-get install docker-ce -y

docker --version

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

sudo apt-get update -y

sudo apt-get install kubelet kubeadm kubectl -y

cat > /etc/docker/daemon.json <<-EOF
{ "exec-opts": ["native.cgroupdriver=systemd"],
"log-driver": "json-file",
"log-opts":
{ "max-size": "100m" },
"storage-driver": "overlay2"
}
EOF

sudo systemctl daemon-reload

sudo systemctl enable docker

sudo systemctl restart docker