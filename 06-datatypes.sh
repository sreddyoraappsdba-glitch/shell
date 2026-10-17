#!/bin/bash

var1=10
var2=20
var3=sudheer


echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=5 # decalring integer

COUNT=COUNT+1

echo "Count is: $COUNT"

FRUITS=("Apple" "BANANA" "Papaya") # This is an array

echo "All Fruits: ${FRUITS[@]}"
echo "first fruit: ${FRUITS[0]}"

name="sudheer"

echo "${name} reddy"
