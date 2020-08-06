#!/bin/bash

echo "===================================="
echo "======= Starting boot script ======="
echo "===================================="
echo "=========== Strat update ==========="
echo "===================================="

#yum -y update 
#yum -y install vim bash-completion

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service

echo "===================================="
echo "======== Finish script boot ========"
echo "===================================="
