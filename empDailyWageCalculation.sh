#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $randomCheck -eq $isPresent ]
then
        employeeRatePrHr=20;
        employeeHrs=8;
        salary=$(($employeeHrs*$employeeRatePrHr));
else
        salary=0;
fi
