#!/bin/bash -x

#employee either part time or full, working for any organisation & will work till
# maximum working days allowed in month
# maximum working hours allowed in month;
# for that, we calculate wage.

# RANDOM%N ===> range > 0 to N-1

#Constant
EMPLOYEE_PART_TIME=1
EMPLOYEE_FULL_TIME=2
EMPLOYEE_RATE_PER_HOUR=100
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100


#Variable
dailyWage=0             #camel case
total_working_days=0    #underscore
total_working_hours=0

#get employee wage per day
getEmployeeWage() {
        #switch - generate workHours per day
        case $1 in
                $EMPLOYEE_PART_TIME) workHours=4;;
                $EMPLOYEE_FULL_TIME) workHours=8;;
                *) workHours=0;;
        esac
        echo $workHours;
}

#calculate wage for each day
while [ $total_working_days -lt $MAX_WORKING_DAYS ]
do
        ((total_working_days++));
        workHours=$( getEmployeeWage $((RANDOM%3)) );
        dailyWage=$((workHours*EMPLOYEE_RATE_PER_HOUR));
        total_working_hours=$((total_working_hours+workHours));
        totalWage=$((totalWage+dailyWage));
done

echo "dailyWage - " $dailyWage
echo "totalWage - " $totalWage

