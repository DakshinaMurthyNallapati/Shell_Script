#!/bin/bash

USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
        then
            echo "$2.. FAILURE"
            exit 1
        else
            echo "$2..SUCCESS"
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
            echo "Mysql is already ....INSTALLED"

    fi

dnf list installed git

    if [ $? -ne 0 ] # not installed
        then

            dnf install git -y
            VALIDATE $? "Installation of Git"
        else
            echo "GIT is already ....INSTALLED"

    fi