#!/usr/bin/bash
sname=`basename $0`

function show_help {
cat << EOH
$sname is a script to view comma separated files.

Usage: $sname <CSV file name>

Author: Amey Joshi
Version: 1.0
Date: 04-Feb-2020
EOH
}

fname=$1
if [ $fname"x" = "x" ]; then
    show_help
else
    cat $fname | sed "s/,/ ,/g" | column -t -s, | less
fi

