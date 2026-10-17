#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script from root"
    exit 1
fi

echo "proceding....."
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "nginx installation failed"
    exit 1
else
    echo "ngnix installation is successful"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation failed"
    exit 1
else
    echo "mysql installation is successful"
fi

echo "end"