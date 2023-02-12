#!/bin/bash
chmod +x ../script.sh

test() {
  output="$(echo $1 | ../script.sh)"
  output="$(echo "$output" | tr -d '\n')"
  output="$(echo "$output" | tr -d ',')"
  output="$(echo "$output" | tr -d ' ')"

  if [[ "$output" == "$2" ]]; then
    lg -r p -m "Testing with "$1""
  else
    lg -r f -m "Testing with "$1"" -e "Look up/precompute the primes up to "$1" and make sure your program returns them correctly."
  fi

  echo "$output"
}

test 40 "23571113171923293137"
test 100 "2357111317192329313741434753596167717379838997"