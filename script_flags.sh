#!/bin/bash

# This is a script to test argument passing with flags

while getopts ":n:i:c:" opt
do 
    case "${opt}" in
        n) echo "Name: ${OPTARG}";;
	i) echo "ID: ${OPTARG}";;
	c) echo "Color: ${OPTARG}";;
    esac
done

