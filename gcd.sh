#!/bin/bash

re="^[0-9]*$"
if [[ -n $3 ]]; then
	echo "INPUT ERROR: More than 3 args are not accepted" 1>&2
	exit 1
elif [[ -z $1 || -z $2 ]]; then
	echo "INPUT ERROR: Please input two args" 1>&2
	exit 1
elif [[ $1 = 0 || $2 = 0 ]]; then
	echo "INPUT ERROR: Do not input 0 as arg" 1>&2
	exit 1
elif [[ $1 =~ $re && $2 =~ $re ]]; then
	a=$1
	b=$2
	c=$((a%b))
	while [ "$c" -gt "0" ]; do
		a=$b
		b=$c
		c=$((a%b))
	done
	echo $b
	exit 0
else
	echo "INPUT ERROR: Please input two natural numbers as arg" 1>&2
	exit 1
fi
