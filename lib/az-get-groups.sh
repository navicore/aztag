#!/usr/bin/env bash

OUT=`az group list -o table | grep -v Location | grep -v "\-\-\-" | awk '{print $1;}' `

echo "$OUT"

