# [Operators](https://tldp.org/LDP/abs/html/comparison-ops.html):
### Integer Operators:
1. Arithmetic Operators: ``` [+, -, *, /, %, **, +=, -=, /=] ```
2. Integer Operators: 
```
a. -eq, -ne, -gt, -ge, -lt, -le
   - Syntex [ "$var1" -eq "$var2" ]
b. <=, >=, <, >
   - Syntex: (( "$var1" <= "$var2" )) 
```
3. Increment/Decrement Operators: (++Pre, Post++, --Pre, Post--)

### String Operators:
4. String Operators: 
```(=, ==, !=, <, >) 
- Syntex: [ "$var1" == "$c=var2" ]
- **Note:** < less than, > greater than use to compare the characters in ASCII alphabetical order.
```

### 5. Logical/Boolean Operators:
```
   (AND: &&, OR: ||, NOT: !) & -o (used to create Boolean OR logic within two or more conditions. 
   - eg. [ $var1 -eq 55 ] || [ $var2 -eq 80 ]
```

### 6. Bitwise Operators:
  - Used to perform bitwise operations on bit patterns (&, |, ^, ~, >>[^1], <<[^2])
   
### 7. Ternary Operator: Only works with Ints.
   ```
   - Syntex: $(( expr?expr:expr ))
   eg.
   x=40
   y=50
   ((z=(x>y)?100:200))
   echo $z
   ```

### 8. Comma Operator: 
```
  - used to execute multiple statements in a line. 
  - eg. echo "$(( n=10, n=n+30 ))")
```

### 9. File Test Operators:
```
Syntex: [ -Operator File2Test ] 
   - -d operator: Checks if the given directory/folder name exists or not.
   - -e operator: Checks whether the given file exists or not.
   - -r operator: Checks whether the given file has read access or not.
   - -w operator: Check whether the given file has write access or not.
   - -x operator: Check whether the given file has execute access or not.
   - -O operator: used to check the ownership of the file.
   - -s operator: Checks the size of the given file. If the size of given file is greater than 0 then it returns true otherwise it is false.
   - -f operator: checks if file exist or not.
   - -h or -L operator: If file is a symbolic link[^3] or not.
   - -S operator: used to check the file is a socket or not. 
   - -t operator: used to check the file is associated with the terminal or not.
   - -g operator: used to check the group id (SGID) is set or not for a file.
   - -u operator: used to check the user id (SUID) is set or not for a file.
   - -G operator: used to check both group id of the file and the login user is the same. 
   - -k operator: used to check the sticky bit[^4] is set or not for a file.
   - -N operator: used to check any file is modified or not.
   - -nt operator: used to check that any file is newer than the other file or not. 
   - -ot operator: used to check any file is older than the other file or not.
   - -ef operator: used to check that two hard links are pointing the same file or not.
   - -b operator: Check whether a file is a block special file or not. It returns true if the file is a block special file otherwise false.
   - -c operator: Checks whether a file is a character special file or not.
```
10. String Operators:
   - -z: used to check the length of a string is zero or not.
   - -n: used to check the length of a string is non-zero or not. 


11. control operator:
- A token that performs a control function. It is a newline or one of the following: ‘||’, ‘&&’, ‘&’, ‘;’, ‘;;’, ‘;&’, ‘;;&’, ‘|’, ‘|&’, ‘(’, or ‘)’.
