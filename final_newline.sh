#!/bin/sh
awk '
BEGIN {
last_not_empty_line=0
last_empty_line=0
}
!/^$/ {
last_not_empty_line=NR
}
/^$/ {
last_empty_line=NR
}
END {
if (last_empty_line == NR) print "final newline present."
if (last_not_empty_line == NR) print "final newline not present."
number_empties = last_empty_line - last_not_empty_line
if (number_empties > 0) print number_empties
}
'
