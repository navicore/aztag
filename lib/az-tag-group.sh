#!/usr/bin/env bash

GROUP=$1
TAGS=$2

#
# use this if you want to tag all resources in a group
#
OUT=`lib/az-get-group-resources.sh $1 | awk -v tags="$TAGS" '{print "echo \"processing " $1 "\" && az resource tag --tags " tags " -n " $1 " -g " $2 " --resource-type " $3 " -o table | grep -v ResourceGroup"}' `

#
# use this if you just want to tag the group
#
#OUT="az group update -n $GROUP --set $TAGS"

echo "$OUT"

