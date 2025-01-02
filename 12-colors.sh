#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
VALIDATE(){
    if [ $1 -ne 0 ]
        then
            echo -e "$2.. $R FAILURE"
            exit 1
        else
            echo -e "$2..$G SUCCESS"
    fi

}

    if [ $USERID -ne 0 ]
        then 
            echo "Error:: You need sudo access to execute this script"
            exit 1 #other than 0
    fi

dnf list installed mysql

    if [ $? -ne 0 ] # not installed
        then
                dnf install mysql -y
                VALIDATE $? "Installation of mysql"

                    
        else
            echo -e "Mysql is already ....$Y INSTALLED"

    fi

dnf list installed git

    if [ $? -ne 0 ] # not installed
        then

            dnf install git -y
            VALIDATE $? "Installation of Git"
        else
            echo -e "GIT is already ....$Y INSTALLED"

    fi