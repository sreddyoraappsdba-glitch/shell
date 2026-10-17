#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2} installation is not successful"
    else
        echo "${2} installation is successful"
    fi
}

echo "proceeding....."
dnf install nginx -y
validate $? "nginx"

dnf install mysql -y
validate $? "mysql"

echo "end"