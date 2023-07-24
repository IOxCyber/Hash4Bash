# 1. Loop&Skip
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

# 2. User Input:
- Syntex: `read variable_name`
- Example:
```
#!/bin/bash
echo "Please enter your name:"
read name

echo "Hello, $name! How are you today?"
```

# 3. Arithmetic Operation:
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

# 4. 














