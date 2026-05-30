#!/bin/bash
n=$1; for i in 1 2 3 4; do b=$((n>8?8:(n<0?0:n))); printf "%d%s" $((256-2**(8-b))) "$([ $i -lt 4 ] && echo .)"; n=$((n-8)); done; echo
