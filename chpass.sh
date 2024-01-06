#!/bin/bash

read -p "enter your user name : "username
read -p "File name for your password incloud :"filename
ansible-playbook -i hosts_file playbook.yml --extra-vars "username=$username filename=$filename"
