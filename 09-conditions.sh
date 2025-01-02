#!/bin/sh

NUMBER=$1

#-gt(greater than), -lt(less than), -eq(equal to), -ge(greater than or equal to), -le(less than or equal to)

if [ $NUMBER -gt 100 ]
    then
        echo "Given number is greather than 100"
        exit 1
fi

if [ $NUMBER -eq 100 ]
    then
        echo "Given number is equal to 100"
    else 
        echo "Given number is less than 100"
fi