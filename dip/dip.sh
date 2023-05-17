#!/bin/sh
DIP_EXECUTABLE=$1
if [ $DIP_EXECUTABLE = 'm' ]
then DIP_EXECUTABLE='mark'
fi
shift
ARGS=$@
PREFIX=/home/mdip/dipware/scripts/sh/$DIP_EXECUTABLE
export PREFIX
export ARGS
$PREFIX/$DIP_EXECUTABLE.sh
