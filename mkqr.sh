#!/usr/bin/env bash

## mkqr.sh
## JOB      : grabs qrcode
## GIT      : https://github.com/dofufa/yeti
## LIC      : https://opensource.org/license/mit

if [[ -z $1 ]]; then
 echo 'z-exit'
 return 0
fi

if [[ ${#1} -ne 11 ]]; then
  echo 'ne-exit'
  return 0
fi

## todo: add regex filter

id=$1

qrfile="qr@${id}.png"
watchurl="https://www.youtube.com/watch?v=$id"

## using solution found here:
## https://stackoverflow.com/a/34407620
## https://gist.github.com/sergeiwaigant/f0cf816e143114b6a7d81a901b5d3ce6
xurl=$(printf %s $watchurl|jq -sRr @uri)

base="https://chart.googleapis.com/chart?"
params="cht=qr&chs=75x75&choe=utf-8&chl=${xurl}"
qrurl=$base$params
#wget -O "qr/$qrfile" "$qrurl"
