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

# Tips:
1. Never use UPPERCASE to declare the variable, UPPERCASE is reserved for internal shell variables.
2. The Dollar ($) character is used for parameter expansion, arithmetic expansion and command substitution.
3. We can eliminate unwanted stderr message by redirecting it with 2> notation to /dev/null. /dev/null is a data sink, which discards any data redirected to it. eg. possibe stderr commands 2> /dev/null
4. 
