#!/bin/sh
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
sudo mv /etc/ansible/hosts /tmp/
sudo mv /etc/ansible/ansible.cfg /tmp/
sudo echo localhost >/etc/ansible/hosts
sudo sh -c "echo '[defaults]' >/etc/ansible/ansible.cfg
sudo sh -c "echo 'inventory = /etc/ansible/hosts' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'remote_user = root' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'private_key_file = /root/.ssh/id_rsa' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'host_key_checking = False' >> /etc/ansible/ansible.cfg"
sudo sh -c "echo 'log_path=/var/log/ansible' >> /etc/ansible/ansible.cfg"
#sudo useradd -m ansible
#sudo mkdir /home/ansible/.ssh
#sudo ssh-keygen -f /home/ansible/.ssh/id_rsa -t rsa -N ''
#sudo sh -c "echo 'ansible ALL=NOPASSWD: ALL' >> /etc/sudoers"
#sudo cat /home/ansible/.ssh/id_rsa.pub >/home/ansible/.ssh/authorized_keys
#sudo chmod 600 /home/ansible/.ssh/authorized_keys
#sudo chown -R ansible:ansible /home/ansible/.ssh
#sudo ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
#sudo cat /root/.ssh/id_rsa.pub >/root/.ssh/authorized_keys
#sudo chown -R ansible:ansible /etc/ansible
#sudo git clone https://github.com/jayagopalreddy/Terraform.git /etc/ansible/role
sudo apt-get install libpam-google-authenticator -y
sudo apt-get install figlet -y
sudo apt-get install sysvbanner -y
sudo apt-get install build-essential -y
sudo apt-get install sendmail -y
sudo apt-get install fail2ban -y
sudo mv /etc/fail2ban/jail.conf /tmp/
sudo mv /etc/sysctl.conf /tmp/
wget https://sourceforge.net/projects/sudosh2/files/sudosh2-1.0.5.tgz
tar zxvf sudosh2-1.0.5.tgz
sudo ./sudosh2-1.0.5/configure
sudo make
sudo make install
sudo sh -c "echo 'User_Alias ADMINS=ubuntu,ansible' >> /etc/sudoers"
sudo sh -c "echo 'Cmnd_Alias SUDOSH=/usr/local/bin/sudosh' >> /etc/sudoers"
sudo sh -c "echo 'Admins ALL=SUDOSH' >> /etc/sudoers"
sudo mkdir /var/log/sudosh
sudo chmod 733 /var/log/sudosh
sudo service sshd restart
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential -y
export LC_ALL=C
sudo pip install --upgrade pip
sudo pip install boto boto3
sudo apt install awscli -y
