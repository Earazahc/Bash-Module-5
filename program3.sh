#!/bin/bash -
#===============================================================================
#
#          FILE: program3.sh
#
#         USAGE: ./program3.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Michael Stuart (mstuart), michaelstuart2@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/06/2018 04:48:19 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


grep Female,Canada `pwd`/temp/unfiltered.csv | sed s/,,/,waldo@weber.edu\,/ | awk -F, '{ print $2", "$3", "$4", "$5", "$6 }' >> filtered.csv
