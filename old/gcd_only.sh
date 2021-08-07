#!/bin/bash

a=$1
b=$2
c=$((a%b))
while [ "$c" -gt "0" ]; do
	a=$b
	b=$c
	c=$((a%b))
done
echo $b
