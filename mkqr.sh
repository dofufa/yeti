#!/usr/bin/env bash

## mkqr.sh
## JOB      : grabs qrcode
## GIT      : https://github.com/dofufa/yeti
## LIC      : MIT


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
base="https://chart.googleapis.com/chart?"
params="cht=qr&chs=75x75&choe=utf-8&chl=${watchurl}"
qrurl=$base$params
wget -O "qr/$qrfile" "$qrurl"
