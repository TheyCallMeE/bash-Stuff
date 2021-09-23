#!/bin/bash

function my_function() {
    #First argument is signified by $1, second by $2 and so on
    x=$1
    y=$2
    return $(( $y - $x + 1 ))
}

my_function 24 60
echo $?
