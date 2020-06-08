
#!/bin/bash
#This is RUN file to install Docker - CE Verion in your RHEL Machine
#Instruction: Wherever, if asked to enter your acceptance, please press 'Y/y' to proceed further
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf repolist -v
sudo dnf install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm -y
sudo dnf install docker-ce -y
sudo systemctl enable --now docker
systemctl is-active docker
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o docker-compose

sudo mv docker-compose /usr/local/bin && sudo chmod +x /usr/local/bin/docker-compose
sudo dnf install  python3-pip -y
pip3.6 install docker-compose --user

echo "Finally Docker CE has installed in your system"


