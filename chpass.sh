#!/bin/bash

read -p "enter your user name : "username
echo $username >> changepassword.yml
read -p "File name for your password incloud :"filename
echo $filename >> changepassword.yml
