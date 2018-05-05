#!/bin/bash
echo -e '\0033\0143'
printf "\n\n"

echo "Ok, quick setup... then lab prep with ansible..."
echo "PIP, Python Package Manager."
echo "Ansible version 2.5"
echo "Some PIP / Ansible Dependencies like:"
echo "f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff"
printf "\n\n\n"
sleep 3
echo "Ready?"
sleep 1
echo "Set..."
sleep 1
echo "Go!!!"
sleep 1

sudo apt-get update
sudo apt-get -y install python-pip
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade setuptools
sudo -H pip install --upgrade git+https://github.com/ansible/ansible.git@stable-2.5
sudo -H pip install f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff

echo "Done with PIP, Ansible, and Dependencies"
echo ""
echo "Setup bigip host entry in /etc/hosts..."
echo "10.1.1.4 bigip-a bigip-a.ansible.lab" | sudo tee -a /etc/hosts
echo ""
echo "Now running lab cleanup playbook..."
echo ""
sleep 2
ansible-playbook ./playbooks/lab-cleanup.yml

echo "I think were setup! Use command to run it all:  ansible-playbook site.yml"