#!/bin/bash

# Usage:
# Go into cmd loop: sudo ./clgeneos.sh
# Run single cmd:  sudo ./clgeneos.sh <clgeneos paramers>

PREFIX="docker-compose exec nodgeneosd clgeneos"
if [ -z $1 ] ; then
  while :
  do
    read -e -p "clgeneos " cmd
    history -s "$cmd"
    $PREFIX $cmd
  done
else
  $PREFIX $@
fi
