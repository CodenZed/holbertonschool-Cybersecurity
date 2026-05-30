#!/bin/bash
traceroute -n $1 | tail -n +2 | grep -c '^\s*[0-9]'
