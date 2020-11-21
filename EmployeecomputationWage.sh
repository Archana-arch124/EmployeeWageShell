#!/bin/bash

isPresent=1;
isFullTime=2;
empRatePerHrs=100;
randomcheck=$((RANDOM%3));
case $randomcheck in
       $isPartTime)
             empHrs=4;
             ;;
       $isFullTime)
             empHrs=8;
             ;;
       *)
             empHrs=0;
             ;;
esac
salary=$((empHrs*$empRatePerHrs));
echo $salary


