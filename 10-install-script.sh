#!/bin/bash

USERID=$(id -u)

    if [ $USERID -ne 0 ]
        then 
            echo "Error:: You need sudo access to execute this script"
            exit 1 #other than 0
    fi

dnf list installed mysql

    if [ $? -ne 0 ] # not installed
        then
                dnf install mysql -y

                    if [ $? -ne 0 ]
                        then
                            echo "Installation of mysql.. FAILURE"
                            exit 1
                        else
                            echo "Installation of mysql..SUCCESS"
                    fi
        else
            echo "Mysql is already ....INSTALLED"

    fi

dnf list installed git

    if [ $? -ne 0 ] # not installed
        then

            dnf install git -y

                if [ $? -ne 0 ]
                    then
                        echo "Installation of git.. FAILURE"
                        exit 1
                    else
                        echo "Installation of git..SUCCESS"

                fi
        else
            echo "GIT is already ....INSTALLED"

    fi