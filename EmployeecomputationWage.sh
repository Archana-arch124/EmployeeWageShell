#Welcome to Employee Wage Computation problem
#!/bin/bash/

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HRS=20
NUM_OF_WORKING_DAYS=30
MAX_HRS_IN_MONTH=100

totalEmpHrs=0
totalWorkingDays=0
declare -A dailyWages


function getWorkingHours(){
                 case $1 in
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
                echo "$empHrs"
}
function getEmpWage(){
            empHrs=$1
            echo $(($empHrs*$EMP_RATE_PER_HRS))
}

while [[ $totalEmpHrs -le $MAX_HRS_IN_MONTH && $totalWorkingDays -le $NUM_OF_WORKING_DAYS ]]

do

         ((totalworkingDays++))
        empHrs=$( getWorkingHours $((RANDOM % 3)))
        totalEmpHrs=$(($totalEmpHrs + $empHrs))
        dailyWages["Day"$totalWorkingDays]=$( getEmpWage $empHrs )
done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HRS))

echo "Employee total Salary is : $totalSalary"
echo "Employee total Hours is : $totalEmpHrs"
echo "Employee Dailywages : ${dailyWages[@]}"
echo "Employee Days : ${!dailyWages[@]}"
