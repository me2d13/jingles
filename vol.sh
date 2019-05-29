#!/bin/sh
if [ $# -ne 1 ]
then
  echo "Provide volume 0-100 as parameter"
  exit 2
fi

/usr/bin/amixer set Master ${1}%
