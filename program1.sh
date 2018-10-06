#!/bin/bash -
#===============================================================================
#
#          FILE: program1.sh
#
#         USAGE: ./program1.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Michael Stuart (mstuart), michaelstuart2@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/06/2018 03:28:05 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

errorLog()
{
echo "test"

}





if [[ $1 == "2015" || $1 == "2016" ]]
then
#take input parameter

yearInput=$1

#wget command to retrieve one file based on input parameter

wget "http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$yearInput.tar.gz"


else

    echo "encountered an error"
    exit 1

    errorLog
fi
