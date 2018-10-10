#!/bin/bash -
#===============================================================================
#
#          FILE: program5.sh
#
#         USAGE: ./program5.sh
#
#   DESCRIPTION: Transfer the filtered file via FTP
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 10/10/2018 10:09:17 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

HOST="$HOME/ftp/files"
USER="$1"
PASSWD="$2"
FILE="*.zip"

`ftp -n $HOST`
`quote USER $USER`
`quote PASS $PASSWD`
`binary`
`put $FILE`
`quit`

exit 0

