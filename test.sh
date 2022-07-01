#!/bin/bash
declare -a cases=(Alice Bob Claire Derek)

for name in ${cases[@]}; do
  if [ "$(java App ${name})" == "Hello, ${name}!" ]; then
    echo "Test Passed!"
  else
    echo "Test Failed!"
    exit 1
  fi
done
