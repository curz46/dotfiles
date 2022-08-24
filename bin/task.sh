#!/bin/bash

#status=$($HOME/bin/timetrace status -f "[{project}] {trackedTimeCurrent} | {trackedTimeToday}")
#echo $status
#echo $status
#echo ""

TOGGL=$HOME/.local/bin/toggl

sum=$($TOGGL sum)
status=$($TOGGL now)

today=$(echo $sum | sed -rn 's/^.*today[ ]+([0-9]{0,1}[0-9]:[0-9][0-9]:[0-9][0-9]).*$/\1/p')
description=$(echo $status | sed -rn '1 s/^(.*) #.*$/\1/p' | cut -c -30)...
project=$(echo $status | sed -rn 's/^.*Project: ([a-zA-Z]+).*$/\1/p')
duration=$(echo $status | sed -rn 's/^.*Duration: ([0-9]{0,1}[0-9]:[0-9][0-9]:[0-9][0-9]).*$/\1/p')

echo "[$project] $description $duration / $today"
echo "[$project] $description $duration / $today"
echo ""
