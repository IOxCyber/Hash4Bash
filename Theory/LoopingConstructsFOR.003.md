# Looping Constructs: 

```
Syntex:
for name [ [in [words …] ] ; ] do commands; done
```

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
