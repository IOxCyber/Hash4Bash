# Conditional Constructs

## 1. if: 
- `consequent-commands` will only run when `test-commands` returns status `0` i.e `True`.

```
if [[test-commands]]; then
  consequent-commands;
elif [[ more-test-commands]]; then
  more-consequents;
else alternate-consequents;
fi
```

```
Syntex:
if [[ $VAR -gt xx ]]; then
  echo "Success!"
fi
```

```
eg. 
1. if (( "${1}" % x == 0 )) # Integer
2. if [ $(expr $1 % x) -eq 0 ]; # Integer
3. if (( "$1" % 3 == 0 )); # Integer

```

## 2. case : 
- Using the case statement instead of nested if statements, will help you make your bash scripts more readable and easier to maintain.

```
COUNTRY="Romania"
echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac
```

- Multiple patterns can be separated by the | operator. 
- The ) operator terminates a pattern list.
- A pattern can have special characters.
- clause must be terminated with ;;
- pattern and its associated commands are known as a clause
- to use the wildcard asterisk symbol (*) as a final pattern to define the default case.
- If no pattern is matched, the return status is zero


