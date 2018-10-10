#!/bin/bash -
#===============================================================================
#
#          FILE: program4.sh
#
#         USAGE: ./program4.sh
#
#   DESCRIPTION: Script to compress final filter data file
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/10/2018 03:27:32 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

team="EatonStuart"
fileName="DATA_FILTER"
date=`date +%Y_%m_%d_%H:%M`

`zip -q ${team}_${fileName}_${date} filtered.csv`

exit 0
