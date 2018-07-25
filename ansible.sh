#!/bin/bash
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
ansible --version
sudo mv /etc/ansible/ansible.cfg /tmp
sudo mv /etc/ansible/hosts /tmp
sudo touch /etc/ansible/hosts
sudo sh -c "echo '[defaults]' >/etc/ansible/ansible.cfg"
sudo sh -c "echo 'inventory = /etc/ansible/hosts' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'remote_user = root' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'private_key_file = /root/.ssh/id_rsa' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'host_key_checking = False' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'log_path=/var/log/ansible' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'deprecation_warnings=False' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'command_warnings=False' >> /etc/ansible/ansible.cfg"
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential -y
export LC_ALL=C
sudo pip install --upgrade pip
sudo pip install boto boto3
sudo apt install awscli -y
aws --version
