#!/usr/bin/env bash
#
# Copyright 2018 (c) Cj-bc
# This software is released under MIT License
#
# @(#) version -

back="$(tput cub 1)"
up="$(tput cuu 1)"

function progress() (
  local PIPE_NAME=$1
  until [ -p $PIPE_NAME ]; do
    echo -n "|"
    sleep  0.1
    echo -n "${back}\\"
    sleep  0.1
    echo -n "${back}-"
    sleep  0.1
    echo -n "${back}/"
    sleep  0.1
    echo -n "${back}"
  done
)

P="/tmp/sh_progress_$$"
progress $P &

sleep 10

echo "$back $up $back hoge $back $up black"
echo "Done"
mkfifo $P

read

echo "remove pipe"
