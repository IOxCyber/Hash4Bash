## Lists of Commands:  
A list is a sequence of one or more pipelines separated by one of the below operators.
> ‘;’, ‘&’, ‘&&’, or ‘||’, and optionally terminated by one of ‘;’, ‘&’, or a newline.

###

- list operators, ‘&&’ and ‘||’ have equal precedence followed by ‘;’ and ‘&’, which have equal precedence.
- If a command is terminated by the **control operator &**, the shell executes the command in the background in
a subshell, shows the output after executing the other commands ended with (;).
- Pipelines: a sequence of one or more commands separated by one of the control operators | or |&.

###

1. An AND list has the form
> command1 && command2
> 
> command2 is executed if, and only if, command1 returns an exit status of zero (success).

2. An OR list has the form
> command1 || command2
> 
> command2 is executed if, and only if, command1 returns a non-zero exit status.


###

