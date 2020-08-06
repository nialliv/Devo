#!/bin/bash

echo "===================================="
echo "======= Starting boot script ======="
echo "===================================="
echo "=========== Strat update ==========="
echo "===================================="

yum -y install epel-release
yum -y update 
yum -y install vim bash-completion ansible
yum -y install git

for (( i=11; i < 16; i++ ))  do
	echo "alias serv$i='ssh ansible@192.168.1.$i'" >> /home/vagrant/.bashrc
done

echo "aliases added for serv11..15"

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service

echo "===================================="
echo "======== Finish script boot ========"
echo "===================================="
