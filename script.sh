#!/bin/bash
apt-get update
apt-get install docker.io -y
systemctl start docker
sudo usermod -aG docker ubuntu
wget https://get.helm.sh/helm-v3.9.1-linux-amd64.tar.gz
tar -zxvf helm-v3.9.1-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


