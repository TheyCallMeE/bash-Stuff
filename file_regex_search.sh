#!/bin/bash

# Intended to search for a regex in a supplied file name
# Exit status 0 if found

filename=$1
to_find=$2

grep "$to_find" $filename >&2
