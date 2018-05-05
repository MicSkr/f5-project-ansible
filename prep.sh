#!/bin/bash
echo -e '\0033\0143'
echo "\n\n\n"

echo "Ok, were going to setup real quicklike..."
echo "PIP, Python Package Manager."
echo "Ansible version 2.5"
echo "Some PIP / Ansible Dependencies like:"
echo "f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff"
echo ""
sleep 1
echo "Ready?"
sleep 1
echo "Set..."
sleep 1
echo "Go!!!"
sleep 1

sudo apt-get update
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade setuptools
sudo -H pip install --upgrade git+https://github.com/ansible/ansible.git@stable-2.5
sudo -H pip install f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff

echo "Done with PIP, Ansible, and Dependencies"
echo ""
echo "Setup Lab host entries..."
echo "10.1.1.4 bigip-a.ansible.lab" >> /etc/hosts
echo ""
echo "I think were setup! Use command to run it all:  ansible-playbook site.yml"