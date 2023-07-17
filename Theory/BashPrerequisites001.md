## Prerequisites
Before Writing a BASH program, make sure to follow below steps:

1. which bash - to know the path for BASH interpreter
2. Always start program by (#!) shebang followed by path for BASH interpreter.
eg. !#/bin/ev bash
3. To create a file: touch file.sh
4. Change ownership: chmod +x file.sh
5. Execute script: sh file.sh or ./file.sh
6. To check default interpreter: echo $SHELL
7. To Check Default Shell linking(bash or dash): ls -la /bin/sh

## Tips:
1. Never use UPPERCASE to declare the variable, UPPERCASE is reserved for internal shell variables.

2. `Job Control`: A mechanism by which users can selectively `stop (suspend) and restart (resume) execution of processes.`

3. We can eliminate `unwanted stderr message by redirecting` it with `2> notation to /dev/null.` /dev/null is a data sink, which discards any data redirected to it. eg. possibe `stderr commands 2> /dev/null`

4. Metacharacter: `[First interpreted by the shell before passing to the command]A metacharacter is a space, tab, newline, or one of the following characters: ‘|’, ‘&’, ‘;’, ‘(’, ‘)’, ‘<’, or ‘>’.`

5. To Show/Hide Numbers in vi editor:
  - esc (if in insert mode)
  - type :set number
  - Number will show on screen.
 
6. Positional Parameter ($0) return the name of the shell or shell script if used within script. `[Positional Parameters: Starts from $1, $2, $3....$N]`

7. Token: A sequence of characters considered a single unit by the shell. It is either a word or an operator.

###

8. If calling from any Unix shell, and the `parameter has spaces `, then you need to quote it. You should also quote every variable used within the function/script.\

9. `Quoting(""): Used to remove the special meaning of certain characters or words to the shell.`

10. `Control Operator`: A token that performs a control function. It is a newline or one of the following: `‘||’, ‘&&’, ‘&’, ‘;’, ‘;;’, ‘;&’, ‘;;&’, ‘|’, ‘|&’, ‘(’, or ‘)’`.

11. `Exit/Return Status:` The value returned by a command to after execution. The `value is restricted to eight bits, so the maximum value is 255.`

12. To compare two vars length, use `${#var} syntex`.

13. Use `-e to enable the meaning of backword slash '\' in BASH shell`.


[^1]: This operator shifts the bits of the left operand to right by number of times specified by right operand. eg. a>>1
[^2]: This operator shifts the bits of the left operand to left by number of times specified by right operand. eg. a<<1
