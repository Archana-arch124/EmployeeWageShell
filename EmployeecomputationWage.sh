#!/bin/bash/

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
NUM_OF_WORKING_DAYS=20
totalWorkingDays=0
for ((day=1;day<=NUM_OF_WORKING_DAYS;day++))
do
              randomCheck=$(( RANDOM % 3 ))
                case $randomCheck in
                        $IS_PART_TIME)
                                empHrs=4;
                                ;;
                        $IS_FULL_TIME)
                                empHrs=8;
                                ;;
                        *)
                                empHrs=0;
                                ;;
           esac
salary=$((empHrs*$EMP_RATE_PER_HRS))
totalSalary=$(($totalSalary+$salary))

echo "Employee total Salary is : $totalSalary"
done

