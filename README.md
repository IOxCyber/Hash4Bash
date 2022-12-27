# Hash4Bash
This Repo contains all the basic Bash codes to learn.

## Prerequisites
Before Writing a BASH program, make sure to follow below steps:

1. which bash - to know the path for BASH interpreter.
2. Always start program by (#!) shebang followed by path for BASH interpreter.
eg. !#/bin/bash
3. To create a file: touch file.sh
4. Change ownership: chmod +x file.sh
5. Execute script: sh file.sh or ./file.sh
6. To check default interpreter: echo $SHELL
7. Default Shell linking(bash or dash): ls -la /bin/sh
8. DASH vs BASH: dash is newer standerd of bash by POSIX & some syntex is different as "function" ketword give error in DASH.

## [free interactive sites to learn](https://www.learnshell.org/)

###
:*Console Context*
> (#) – commands to be executed with root privileges directly as a root user or by sudo command.
> ($) – commands to be executed as a regular non-privileged user.

## Operators:
1. Arithmetic Operators:  (+, -, *, /, %, **, ++, --)
2. Relational Operators: Define the relation between two operands (==, !=, <, >, <=, >=)
3. Logical Operators/Boolean Operators: (&&, ||, !)
4. 5. Bitwise Operators: Used to perform bitwise operations on bit patterns (&, |, ^, ~, >>[^1], <<[^2])
5. File Test Operators: 
   - -b operator: This operator check whether a file is a block special file or not. It returns true if the file is a block special file otherwise false.
   - -c operator: This operator checks whether a file is a character special file or not. It returns true if it is a character special file otherwise false.
   - -d operator: This operator checks if the given directory exists or not. If it exists then operators returns true otherwise false.
   - -e operator: This operator checks whether the given file exists or not. If it exits this operator returns true otherwise false.
   - -r operator: This operator checks whether the given file has read access or not. If it has read access then it returns true otherwise false.
   - -w operator: This operator check whether the given file has write access or not. If it has write then it returns true otherwise false.
   - -x operator: This operator check whether the given file has execute access or not. If it has execute access then it returns true otherwise false.
   - -s operator: This operator checks the size of the given file. If the size of given file is greater than 0 then it returns true otherwise it is false.

# Tips:
1. Never use UPPERCASE to declare the variable, UPPERCASE is reserved for internal shell variables.
2. The Dollar ($) character is used for parameter expansion, arithmetic expansion and command substitution.
3. We can eliminate unwanted stderr message by redirecting it with 2> notation to /dev/null. /dev/null is a data sink, which discards any data redirected to it. eg. possibe stderr commands 2> /dev/null
4. There are no **Booleans in Bash**. However, we can define the shell variable having value as 0 (“ False “) or 1 (“ True “) as per our needs, Bash does have Boolean expressions in terms of comparison and conditions.
5. To Show/Hide Numbers in vi editor:
  - esc (if in insert mode)
  - type :set number
  - Number will show on screen.
 6. Positional Parameter ($0) return the name of the shell or shell script if used within script. [Positional Parameters: Starts from $1, $2, $3....$N]
 7. 


[^1]: This operator shifts the bits of the left operand to right by number of times specified by right operand. eg. a>>1
[^2]: This operator shifts the bits of the left operand to left by number of times specified by right operand. eg. a<<1
