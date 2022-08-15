#!/bin/bash

status=$($HOME/bin/timetrace status -f "{project}: {trackedTimeCurrent} | {trackedTimeToday}")
echo $status
echo $status
echo ""
