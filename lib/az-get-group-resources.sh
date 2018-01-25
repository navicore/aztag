#!/usr/bin/env bash

GROUP=$1

OUT=`az resource list -g $GROUP -o table | grep -v Location | grep -v "\-\-\-" | awk '{print $1 " " $2 " " $4}'`

echo "$OUT"

