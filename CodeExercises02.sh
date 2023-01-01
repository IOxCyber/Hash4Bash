# Exercise 1: https://exercism.org/tracks/bash/exercises/two-fer

#!/usr/bin/env bash

# Solution 1:
   main () {
     # your main function code here
    if [ -z "$1" ]; then
    echo "One for you, one for me."
    else
    echo "One for $1, one for me."
    fi
   }

main "$@"


# Solution 2: (Perfect Code) 

#!/usr/bin/env bash
main () {
var=${1:-you}
echo "One for "$var", one for me."
}

main "$@"

# Solution 3:

#!/usr/bin/env bash
main () {
var=${1:-you}
if [[ $# -eq 1 ]]; then
    fun "$1"
else
    fun "$var"
fi
}
fun(){
echo "One for "$1", one for me."
}
main "$@"
