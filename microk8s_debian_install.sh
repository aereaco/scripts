#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install podman pip cockpit cockpit-podman network-manager snapd
sudo pip install podman-compose

sudo systemctl enable --now NetworkManager
sudo systemctl enable --now podman.socket
sudo systemctl enable --now cockpit.socket

sudo snap install microk8s --classic

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
