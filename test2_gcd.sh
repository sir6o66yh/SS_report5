#!/bin/bash

result=$(./gcd.sh 3)
if [ $? = 1 ]; then
	echo "SUCCESS: Error is catched, please correct the gcd.sh scrpit"
	exit 0
else
	echo "FAIL: Exit status is wrong"
	exit 1
fi
