#!/usr/bin/env bash

GROUP=$1
TAGS=$2

OUT=`lib/az-get-group-resources.sh $1 | awk -v tags="$TAGS" '{print "az resource tag --tags " tags " -n " $1 " -g " $2 " --resource-type " $3 " -o table | grep -v ResourceGroup "}' `

echo "$OUT"

