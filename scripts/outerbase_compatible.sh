#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Error: path with full name (first argument) is required."
  echo
  exit 1
fi

FULL_NAME=$1

echo "Running outerbase-compatible.sh"
sed 's/"{{\([^}]*\)}}"/{{\1}}/g' $1 > $1.outerbase