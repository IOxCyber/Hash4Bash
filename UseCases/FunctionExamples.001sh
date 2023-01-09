#!/bin/bash

# Concate 2 Strings
StrConcat() {
local s=''
echo "${s}"
for n in {1..5} ; do s+="${n}" ; done
echo "${s}"
}

# Sum of two INTs with declare in-built command
IntSum1() {
# declare is a builtin command of the Bash shell, declares shell variables and functions, sets their attributes, and displays their values.
declare -i sum=0 # Set value of the variable is an integer.
echo "Before: ${sum}"
for n in {1..5} ; do sum+="${n}" ; done
echo "Result: ${sum}"
}

# Sum of two INTs with (()) calculation
IntSum2() {
local sum=0
echo "Before: ${sum}"
for n in {1..5} ; do (( sum += n )) ; done # can use (()) to calc the integer.
echo "After: ${sum}"
}


# Sum of Array INT elems, it concate by this way
ArrFunc() {
declare -a arr=()
sum=0
echo "|${arr[@]}|"
for n in {1..5} ; do arr+=( "${n}" ) ; done
echo "|${arr[@]}|"
}

# Function call
StrConcat
IntSum1
IntSum2
ArrFunc
