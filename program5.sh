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

HOST=137.190.19.85
USER=$1
PASSWD=$2
goal="files"
FILE="*.zip"

ftp -inv $HOST <<EOF

user $USER $PASSWD

cd $goal

put $FILE

quit

EOF

exit 0
