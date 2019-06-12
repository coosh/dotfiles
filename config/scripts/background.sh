#!/usr/bin/env bash
BACKGROUND=$(find ~/Pictures/backgrounds/restored -type f | shuf -n1)
feh --bg-scale "$BACKGROUND"
