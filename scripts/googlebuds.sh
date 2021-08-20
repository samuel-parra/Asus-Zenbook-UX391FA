#!/bin/bash

if [ -z "$1" ]; then
  echo "Pulseaudio has these cards:"
  pacmd list-cards | grep 'name: '
  exit 0
fi

MODULE_INDEX=`pacmd list-modules | tac | grep -A 10 -e "argument: .*$1" | grep 'index:' | head -n 1 | cut -d ':' -f 2 | tr -d ' '`
MODULE_NAME=`pacmd list-modules | tac | grep -A 10 -e "argument: .*$1" | grep 'name:' | head -n 1 | cut -d ':' -f 2 | tr -d '<>'`
MODULE_ARGUMENTS=`pacmd list-modules | tac | grep -e "argument: .*$1" | head -n 1 | cut -d ':' -f 2 | tr -d '<>'`
echo "Module index is $MODULE_INDEX"
echo "Module name: $MODULE_NAME"
echo "Module args: $MODULE_ARGUMENTS"

if [ -z "$MODULE_INDEX" ]; then echo "Could not find module index"; exit 0; fi
if [ -z "$MODULE_NAME" ]; then echo "Could not find module name"; exit 0; fi
if [ -z "$MODULE_ARGUMENTS" ]; then echo "Could not find module arguments"; exit 0; fi

echo "Unloading module"
pacmd unload-module $MODULE_INDEX
echo ""
echo "Reloading module"
pacmd load-module $MODULE_NAME $MODULE_ARGUMENTS
echo ""