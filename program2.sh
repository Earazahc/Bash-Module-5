#!/bin/bash -
#===============================================================================
#
#          FILE: program2.sh
#
#         USAGE: ./program2.sh
#
#   DESCRIPTION: This unwraps the tar file recieved and stores it in
#                 a temp file
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/06/2018 03:40:54 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Recieve the year as input param $1

year=$1

# Make sure that the year is valid

if [[ $year != "2015" && $year != "2016" ]]
then
    echo "Invalid Year"
    exit 1
fi


# Check to see if temp exists
if [[ ! -d temp ]]
then
    `mkdir "temp"`
fi


# Move MOCK_DATA into temp
`mv "MOCK_DATA_$year.tar.gz" "temp"`

# Unzip MOCK_DATA
`gunzip -r "temp/MOCK_DATA_$year.tar.gz"`

# Untar MOCK_DATA
`tar -xf "temp/MOCK_DATA_$year.tar"`

# Move untared files into temp
`mv *.csv temp`


# Create unfiltered file
`touch temp/unfiltered.csv`

# Appened MOCK files to unfiltered
`cat temp/MOCK_DATA1.csv >> temp/unfiltered.csv`
`cat temp/MOCK_DATA2.csv >> temp/unfiltered.csv`
`cat temp/MOCK_DATA3.csv >> temp/unfiltered.csv`
`cat temp/MOCK_DATA4.csv >> temp/unfiltered.csv`
`cat temp/MOCK_DATA5.csv >> temp/unfiltered.csv`


exit 0

