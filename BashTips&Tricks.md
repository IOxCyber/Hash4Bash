## Prerequisites
Before Writing a BASH program, make sure to follow below steps:

1. which bash - to know the path for BASH interpreter.
2. Always start program by (#!) shebang followed by path for BASH interpreter.
eg. !#/bin/bash
3. To create a file: touch file.sh
4. Change ownership: chmod +x file.sh
5. Execute script: sh file.sh or ./file.sh
6. To check default interpreter: echo $SHELL
7. To Check Default Shell linking(bash or dash): ls -la /bin/sh

###
:*On Console*
> (#) – commands executing with root privileges directly as a root user or by sudo command.
> 
> ($) – commands executing as a regular non-privileged user.

## Tips:
1. Never use UPPERCASE to declare the variable, UPPERCASE is reserved for internal shell variables.
2. The Dollar ($) character is used for parameter expansion, arithmetic expansion and command substitution.
3. We can eliminate unwanted stderr message by redirecting it with 2> notation to /dev/null. /dev/null is a data sink, which discards any data redirected to it. eg. possibe stderr commands 2> /dev/null
4. There are no **Booleans in Bash**. However, we can define the shell variable having value as 0 (“ False “) or 1 (“ True “) as per our needs, Bash does have Boolean expressions in terms of comparison and conditions.
5. To Show/Hide Numbers in vi editor:
  - esc (if in insert mode)
  - type :set number
  - Number will show on screen.
 6. Positional Parameter ($0) return the name of the shell or shell script if used within script. [Positional Parameters: Starts from $1, $2, $3....$N]
 7. Bash expression: Combination of operators, features, or values used to form a bash conditional statement. Conditional expression could be binary or unary expression which involves numeric, string or any commands whose return status is zero when success.
 8. If calling from any Unix shell, and the *parameter has spaces* , then you need to quote it. You should also quote every variable used within the function/script.


[^1]: This operator shifts the bits of the left operand to right by number of times specified by right operand. eg. a>>1
[^2]: This operator shifts the bits of the left operand to left by number of times specified by right operand. eg. a<<1
