#!/bin/bash

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Echos the current item in the paste buffer
# Only outputs new items, checks if current md5(item) is equal to previous md5(item), if not it's a new item.
#
# @dubs3c
#

state=""

while true
do
    contents=$(pbpaste)
    if [ -z "$state" ]; then
        state=$(md5 -q -s "$contents")
        echo $contents
    fi

    new=$(md5 -q -s "$contents")

    if [[ "$new" != "$state" ]]; then
        state="$new"
        echo $contents
    fi

    sleep 2
done