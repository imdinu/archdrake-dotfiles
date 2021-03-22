#!/bin/bash

cputemp=$(sensors | grep "Package id 0" | grep -ohE "[\+]+.*C\s")
gputemp=$(nvidia-smi | grep -Eo "[0-9]+C")

printf 'CPU:%6s GPU:%4s' "$cputemp" "+$gputemp"
