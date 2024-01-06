#!/bin/bash

read -p "enter your user name : "username
read -p "File name for your password incloud :"filename
read -p "File name for your hosts :"filename
read -p "File name for your hostname like "[ssh_password]"" :hostname

ansible-playbook -i $hostfile playbook.yml --extra-vars "username=$username filename=$filename hostname=$hostname"
