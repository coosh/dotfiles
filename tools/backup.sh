#!/usr/bin/env bash
cat files | awk -F\, '{print "Backing up: "$1; system("cp -af "$1" "$2)}'
