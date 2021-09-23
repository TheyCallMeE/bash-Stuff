#!/bin/bash

declare -a nums
function my_function() {
   x=$1
   y=$2
   nums[0]=$x

   while [[ "$y" -gt "$x" ]]; do
       (( x++ ))
       nums+=( $x )
   done
}

my_function 22 56
echo "${nums[*]}"
echo "${#nums[*]}"
