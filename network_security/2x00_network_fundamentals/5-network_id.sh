#!/bin/bash
IFS=. read a b c d <<< "$1"; IFS=. read m1 m2 m3 m4 <<< "$2"; echo "$((a&m1)).$((b&m2)).$((c&m3)).$((d&m4))"
