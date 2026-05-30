#!/bin/bash
IFS=. read a b c d <<< "$1"
m=$2; ip=$((a<<24|b<<16|c<<8|d)); mask=$((0xFFFFFFFF << (32-m) & 0xFFFFFFFF)); net=$((ip & mask)); bc=$((net | ~mask & 0xFFFFFFFF)); printf "%d.%d.%d.%d - %d.%d.%d.%d\n" $((net>>24&255)) $((net>>16&255)) $((net>>8&255)) $((net&255)) $((bc>>24&255)) $((bc>>16&255)) $((bc>>8&255)) $((bc&255))
