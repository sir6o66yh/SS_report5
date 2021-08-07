#!/bin/bash

result=$(./gcd.sh 2 4)
if [ $result = 2 ]; then
	echo "SUCCESS: Output is Greatest Common Measure"
	exit 0
else
	echo "FAIL: Calucilation process needs to be correct"
	exit 1
fi
