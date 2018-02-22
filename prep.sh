#!/bin/bash
sudo apt-get update
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade setuptools
sudo -H pip install --upgrade git+https://github.com/ansible/ansible.git@stable-2.5
sudo -H pip install f5-sdk bigsuds netaddr objectpath isoparser lxml deepdiff


