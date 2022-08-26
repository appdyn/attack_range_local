#!/bin/bash
sudo apt-get update 
sudo apt-get install -y python3-dev linux-headers-generic unzip python-pip vagrant virtualbox virtualbox-dkms python-virtualenv git #remove python-dev 
sudo gem install winrm-elevated
sudo gem install winrm
#git clone https://github.com/splunk/attack_range_local && cd attack_range_local
#virtualenv -p python3 venv
python3 -m venv attack_range 
source attack_range/bin/activate
pip install -r requirements.txt
ansible-galaxy collection install community.windows
