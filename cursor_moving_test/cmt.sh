#!/usr/local/bin/bash

stty -echo
while true;do
  read -rN1 char
  case $char in
    "h" ) tput cub 1;; # cursor back
    "j" ) tput cud 1;; # cursor up
    "k" ) tput cuu 1;; # cursor down
    "l" ) tput cuf 1;; # cursor forward
  esac
done

function resetstty {
stty echo
}

trap resetstty EXIT
