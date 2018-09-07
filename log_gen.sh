#!/bin/bash

log=log_file.log
while :
do
range=100
number=$RANDOM
let "number %= $range"
  if [ $number -le 70 ];
  then
    echo "$(date +%Y-%m-%d-%H:%M:%S) - Simple string log $RANDOM" 2>&1 | tee -a $log
  else
    echo "$(date +%Y-%m-%d-%H:%M:%S) - Error simple string log $RANDOM"  2>&1 | tee -a $log
  fi
sleep 1
done
