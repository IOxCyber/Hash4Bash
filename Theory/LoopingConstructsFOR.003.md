# Looping Constructs: 

1. for:
```
Syntex:
for name [ [in [words/List …] ] ; ] do commands; done

or

for (( expr1 ; expr2 ; expr3 )) ; do commands ; done
```

- Array items can be printed by [$@] or separated by [$*] the first character in the environment variable IFS (internal field separator), which is a space, TAB, and NEWLINE by default.[More](https://www.oreilly.com/library/view/learning-the-bash/1565923472/ch04s02.html#:~:text=%22%20%24*%20%22%20is%20a%20single%20string,TAB%2C%20and%20NEWLINE%20by%20default.)
```
eg 1. Using Array:
myArray=("A" "B" "88" "98")
for i in ${myArray[@]} 
do
echo "$i"
done
```

```
eg 2.
for i in "A 70" "B 67" "C 78" "D 98"; do # If do is on same line as for, there needs to be a semicolon after list.
set -- $i    #   set -- $marks  #  set: Parses variable and sets positional parameters eg. "marks" into 2 variables i.e $1: A & $2: 70
echo "$1 got ${2}%"
done
```

```
eg 3.
set `uname -a` # set the positional parameters

echo "Positional parameters after  set \`uname -a\` :"
# $1, $2, $3, etc. reinitialized to result of `uname -a`
echo "Field #1 of 'uname -a' = $1"
echo "Field #2 of 'uname -a' = $2"
echo "Field #3 of 'uname -a' = $3"
```

2. until:
```
Syntex:
# Execute consequent-commands as long as test-commands has an exit status which is not zero.
until test-commands; do consequent-commands; done
```

```
Example:
i=3
until [ $i == 0  ]; do # run until the condition is false
echo "Untillll"; 
i=$((i-1))
done 
```

3. while:
```
Syntex:
# Execute consequent-commands as long as test-commands has an exit status of zero.
while test-commands; do consequent-commands; done
```

```
Example:
i=3
while [ $i -lt 10 ]; do # run until the condition is false
echo "whileeee" 
i=$((i+1))
done
```
