#!/usr/bin/env bash

## mkyt.sh
## JOB      : grabs youtube thumbnail
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

ytfile="yt@${id}.jpg"
yturl="https://i1.ytimg.com/vi/${id}/mqdefault.jpg"
wget -O "yt/$ytfile" $yturl
