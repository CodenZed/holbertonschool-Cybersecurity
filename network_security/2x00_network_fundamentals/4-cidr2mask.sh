#!/bin/bash
c=$1; m=$((0xffffffff << (32-c) & 0xffffffff)); echo "$((m>>24&255)).$((m>>16&255)).$((m>>8&255)).$((m&255))"
