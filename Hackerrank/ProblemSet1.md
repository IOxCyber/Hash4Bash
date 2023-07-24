## 1. Loop&Skip: `for`
## [For Loop](https://linuxhint.com/bash_range/#:~:text=You%20can%20iterate%20the%20sequence,the%20upper%20limit%20by%20default.)
- Syntex: `{Start..Stop[..Increment]}`
- Syntex: `{Start..Stop[..-Increment]}` -> -ve in descending order
### Examples of for loop with range:
```
for i in {1..99..2}
do
    echo $i
done
```

## 2. User Input: `read`
- Syntex: `read variable_name`
- Example:
```
#!/bin/bash
echo "Please enter your name:"
read name

echo "Hello, $name! How are you today?"
```

## 3. Arithmetic Operation: `expr/$(())`
- Using `arithmetic expansion $(())`
- Syntex: `$((num1 + num2))`
### OR
- Using `expr`
- Syntex: `$(expr $num1 + $num2)`
### OR
- Using `let`
- Syntex: `let "sum = num1 + num2"; echo $sum` # It requires the 3rd variable.

```
Example:
read X
read Y

echo "$(expr $X + $Y)"
echo "$(expr $X - $Y)"
echo "$((X * Y))"
echo "$(expr $X / $Y)"
```

## 4. Comparing Numbers: `if-then-else`
- Syntex:
```
if [[test-commands]]; then
  consequent-commands;
elif [[ more-test-commands]]; then
  more-consequents;
else alternate-consequents;
fi
```
- Example 1: What is greater number.
```
read X
read Y
if [[ $X -lt $Y ]]
then
    echo "X is less than Y"
elif [[ $X -gt $Y ]];then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi
```

- Example 2:
```
read char

if [[ $char == 'y' || $char == 'Y' ]]; then
echo "YES"
elif (( $char == 'n' || $char == 'N' )); then
echo "NO"
fi
```

- Example 3: triangle is scalene, isosceles, or equilateral.
```
if [[ $X -eq $Y && $Y -eq $Z ]]; then
    echo "EQUILATERAL"
elif [[ $X -eq $Y || $Y -eq $Z || $X -eq $Z ]]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi
```

5. 












