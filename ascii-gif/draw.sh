#!/usr/bin/env bash

pos_x=$1
pos_y=$2
file=$3
declare -i i=1

tput cup $pos_y $pos_x
while IFS= read line; do
  echo -n "$line"
  tput cup $(( $pos_y + i)) $pos_x
  i+=1
done < $file
