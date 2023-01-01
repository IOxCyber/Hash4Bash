#!/usr/bin/env bash

main () {
    # your main function code here
    if [[ $# == 1 ]]; then
    echo "Hello, $1"
    else
    echo "Usage: error_handling.sh <person>"
    exit 1 # Exit with exit code 1
    fi
}

   main "$@"
