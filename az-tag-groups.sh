#!/usr/bin/env bash

#
# usage:
#
# ./az-tag-groups.sh "tags.mytag1=one tags.mytag2=two" > runme.sh
#

TAGS=$1

OUT=`lib/az-get-groups.sh | awk -v tags="$TAGS" '{print "az group update -n " $1 " --set " tags "";}'`

echo "$OUT"

