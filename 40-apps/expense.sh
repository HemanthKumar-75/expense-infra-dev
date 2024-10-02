#!bin/bash

dnf install ansible -y
cd /tmp
git clone https://github.com/HemanthKumar-75/expense-project-by-ansible.git
cd expense-project-by-ansible
ansible-playbook -i inventory.ini mysql.yml
ansible-playbook -i inventory.ini backend.yml
ansible-playbook -i inventory.ini frontend.yml