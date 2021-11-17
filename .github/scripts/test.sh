#!/bin/bash

for i in {1..20..1}; do
  for j in {1..20..1}; do
    num=$(echo -e "$i\n$j" | python adder.py | sed 's|[^0-9]*||g')
    expected=$(( $i + $j ))
    # echo $expected
    if [[ "$num" != "$expected" ]]; then
      echo "Numbers $i + $j do not equal $num"
      exit 1
    fi
  done
done

echo "Inputs correctly added together"
echo "pass"
