#!/bin/bash

read -p "enter your user name : "username
read -p "File name for your password incloud :"filename
read -p "File name for your hostname  :"hostname

ansible-playbook -i $hostfile playbook.yml --extra-vars "username=$username filename=$filename hostname=$hostname"
