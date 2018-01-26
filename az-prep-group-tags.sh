#!/usr/bin/env bash

TAGS=$1

OUT=`lib/az-get-groups.sh | awk -v tags="$TAGS" '{print "lib/az-tag-group.sh " $1 " \"" tags "\"";}'`

echo "$OUT"

