#!/bin/sh -
# This is a finder command into text file.
if test $1; then
  find . -type f -exec grep "$1" /dev/null {} \;
else
  echo "Don't forget to include the word you would like to search for"
  exit 1
fi
