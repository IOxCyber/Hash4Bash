# Exercise 1: https://exercism.org/tracks/bash/exercises/two-fer

#!/usr/bin/env bash

   main () {
     # your main function code here
    if [ -z "$1" ]; then
    echo "One for you, one for me."
    else
    echo "One for $1, one for me."
    fi
   }

main "$@"


# Exerise 2: 
