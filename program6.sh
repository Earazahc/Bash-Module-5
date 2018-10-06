#!/bin/bash -
#===============================================================================
#
#          FILE: program6.sh
#
#         USAGE: ./program6.sh
#
#   DESCRIPTION: Clean up the program
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/06/2018 05:31:24 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

`rm temp/*`
`rmdir temp`

exit 0
