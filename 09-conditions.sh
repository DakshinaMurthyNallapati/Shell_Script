#!/bin/sh

NUMBER=$1

#-gt(greater than), -lt(less than), -eq(equal to), -ge(greater than or equal to), -le(less than or equal to)

if [ $NUMBER -gt 100]
    then
        echo "The given number is greather than 100"
    else 
        echo "The given number is less than or equal to 100"
fi