#!/bin/awk -f
BEGIN {
print "Permissions\tUser\tGroup\tFileame";
}
FNR>1 {
print $1 "\t" $3 "\t" $4 "\t" $NF;
}
