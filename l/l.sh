#!/bin/sh
# Count number of output lines
LS_OUTPUT_LINES=$(ls -Al | grep -c '^')
# Get terminal height in lines
LINES=$(tput lines)
ls -Al | awk '
BEGIN {
print "Permissions\tUser\tGroup\tFilename";
}
FNR>1 {
print $1 "\t" $3 "\t" $4 "\t" $NF;
}
' | if [ $LS_OUTPUT_LINES -gt $LINES ]
then
less
else
cat
fi
