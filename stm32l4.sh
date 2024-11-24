#!/usr/bin/env bash

if [[ -z "$1" ]]; then
	echo "Usage: stm32l4.sh <elf file>"
	exit 1
fi

openocd -f interface/stlink.cfg -f target/stm32l4x.cfg -c "program $1 verify exit"
