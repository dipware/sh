#!/bin/sh
# Count number of output lines
LS_OUTPUT_LINES=$(ls -Al | grep -c '^')
# Get terminal height in lines
LINES=$(tput lines)
ls -Al | awk '
BEGIN {
}
FNR>1 && /^d/{
directories[NR] = $1 "\t" $3 "\t" $4 "\t" $NF;
}
FNR>1 && !/^d/{
files[NR] = $1 "\t" $3 "\t" $4 "\t" $NF;
}
END { 
print "Permissions\tUser\tGroup\tName";
for (dir in directories) print directories[dir];
for (file in files) print files[file];
}
' | if [ $LS_OUTPUT_LINES -gt $LINES ]
then
less
else
cat
fi
