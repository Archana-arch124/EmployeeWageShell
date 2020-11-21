#!/bin/bash
isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
        empHrs=8
        empRatePerHrs=20;
        salary=$((empHrs*$empRatePerHrs));
        echo $salary for fulltime
else
        empHrs=4
        empRatePerHrs=20;
        salary=$((empHrs*$empRatePerHrs));
        echo $salary for partime

fi

