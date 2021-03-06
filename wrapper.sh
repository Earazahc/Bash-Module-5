#!/bin/bash -
#===============================================================================
#
#          FILE: wrapper.sh
#
#         USAGE: ./wrapper.sh
#
#   DESCRIPTION: This is the main script for Bash Module 5
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/03/2018 02:46:34 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# These are the variables to hold the input params
first_YEAR=""
last_YEAR=""
email=""
user=""
passwd=""

# These are the test variable to make sure params have been recieved

have_f=0
have_l=0
have_e=0
have_u=0
have_p=0


# Usage function
UsageFunction()
{
    echo "Usage: $0 [-f first_YEAR] [-l last_YEAR] [-e email] [-u user (optional)] [-p password (optional)]"
    echo "Make sure required arguments are filled"
    # Always exit help with nonzero
    exit 1
}

if [[ $1 == "--help" ]]
then
    UsageFunction
fi


# Read in all input params to their variables
while getopts ":f:l:e:u:p:" argv
do
    case $argv in
        f)
            first_YEAR=$OPTARG
            have_f=1
            echo "Recieved $first_YEAR for first year"
            ;;
        l)
            last_YEAR=$OPTARG
            have_l=1
            echo "Recieved $last_YEAR for last year"
            ;;
        e)
            email=$OPTARG
            have_e=1
            echo "Recieved $email for email"
            ;;
        u)
            user=$OPTARG
            have_u=1
            echo "Recieved $user for user"
            ;;
        p)
            passwd=$OPTARG
            have_p=1
            echo "Recieved $passwd for password"
            ;;
        ?)
            UsageFunction
            ;;
        *)
            echo "Unsupported function"
            usageFunction
            ;;
    esac
done


# Test to make sure all params have been filled

if [[ $have_f -eq 1 && $have_l -eq 1 && $have_e -eq 1 ]]
then
    echo "All params filled"
else
    UsageFunction
fi

# check for log file, if needed create it
if [[ ! -f log ]]
then
    `touch log`
fi



# Call program 1 and run in loop from first year to last

i=$first_YEAR
while [[ $i -ne $last_YEAR ]]
do
    echo "working on $i"
    bash program1.sh $1
    # `2>&1 log`
    i=`expr $i \+ 1`
done


# Send an email

mail -s "Hi, we couldn't get things working bt heres an email anyways :)" $email


exit 0
