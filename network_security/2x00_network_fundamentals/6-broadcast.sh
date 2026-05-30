#!/bin/bash
IFS=. read a b c d <<< "$1" mask=($2); IFS=. read m1 m2 m3 m4 <<< "$2"; echo "$((a|(~m1&255))).$((b|(~m2&255))).$((c|(~m3&255))).$((d|(~m4&255)))"
