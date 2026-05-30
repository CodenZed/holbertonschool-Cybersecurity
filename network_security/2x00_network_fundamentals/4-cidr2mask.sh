#!/bin/bash
n=$1; m=$((0xffffffff << (32-n) & 0xffffffff)); printf "%d.%d.%d.%d\n" $((m>>24&255)) $((m>>16&255)) $((m>>8&255)) $((m&255))
