#!/bin/sh
# first argument is browser, second argument is file of urls
if [ -f $2 ]; then
  cat $2 | xargs $1 -new-tab
else
  $1 -new-tab $2
fi
