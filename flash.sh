#!/usr/bin/env bash

if [[ -z "$1" ]]; then
	echo "Usage: flash.sh <elf file>"
	exit 1
fi

gdb-multiarch -q -x flash.gdb "$1"
