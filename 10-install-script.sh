#!/bin/bash

USERID=$(id -u)

    if [ $USERID -ne 0 ]
    then 
            echo "Error:: You need sudo access to execute this script"
            exit 1 #other than 0
    fi

        dnf install mysqll -y

    if [ $? -ne 0 ]
    then
            echo "Installing mysql.. FAILURE"
            exit 1
    else
            echo "Installing mysql..SUCCESS"

    fi

        dnf install git -y

    if [ $? -ne 0 ]
    then
            echo "Installing git.. FAILURE"
        exit 1
    else
        echo "Installing git..SUCCESS"

    fi