#!/usr/local/bin/bash
#
# this code is comes from:
#   https://stackoverflow.com/questions/26137110/disabling-user-input-during-an-infinite-loop-in-bash?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

function hideinput {

  if [ -t 0 ]
  then
    stty -echo -icanon time 0 min 0
  fi
}

function cleanup {
  if [ -t 0 ]
  then
    stty sane
  fi
}

trap cleanup EXIT
trap hideinput CONT
hideinput
n=0
while test $n -lt 10
do
  read line
  sleep 1
  echo -n "."
  n=$[n+1]
done
echo
