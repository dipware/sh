#!/bin/sh
DIP_EXECUTABLE=$1
shift
ARGS=$@
PREFIX=/home/mdip/dipware/scripts/sh/$DIP_EXECUTABLE
export PREFIX
export ARGS
$PREFIX/$DIP_EXECUTABLE.sh
