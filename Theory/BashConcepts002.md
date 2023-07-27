## Important Concepts:
1. The Dollar `$` character is used for parameter expansion `${var}`, arithmetic expansion `$((expr var1 + var2))` and command substitution `$(command)`.

> The ‘$’ character introduces parameter expansion, command substitution, or arithmetic expansion.
>
> `Parameter Expansion ${parameter:offset:length}`

2. There are no `Booleans in Bash`. However, we can define the shell variable having value as `0 (“ False “) or 1 (“ True “)` as per our needs, Bash does have Boolean expressions in terms of comparison and conditions.

3. `Bash expression`: Combination of operators, features, or values used to form a bash conditional statement. The conditional expression could be a binary or unary expression that involves numeric, string, or any commands whose `return status is zero when successful` check with `echo $?`.

4. In bash, `prefer double [[ over [`.
   - `For arithmetic operations (numbers), prefer (( over [[.`
   - `(( is an arithmetic operation while [[ is used for strings`.

## AND and OR short-circuits: a short form of if-then-else
- can be used for any file existence, variable value, or comparator.
> logical AND stops processing once the first false is found.
  - eg 1. `[ 1 -eq 0 ] && echo "True" || echo "False!"` # This will print False as `[ 1 -eq 0 ]` will return False, AND will never execute second Expr as first false is found and print False!
  - eg 2. `[ 1 -eq 1 ] && echo "True" || echo "False!"` # This will print True as `[ 1 -eq 1 ]` will return True, AND will execute second Exp i.e echo "True" and print True
  
> `logical OR stop processing once first true is found`. [More](https://fabianlee.org/2020/10/14/bash-using-logic-expressions-as-a-shorthand-for-if-then-else-control/)
 
**Note**: Side effects. if the test is true but the first expression returns a non-zero result then the second expression will also be evaluated – which is probably unexpected.
> eg. $ [ 1 -eq 1 ] && { echo "correct, 1 does indeed equal 1";false; } || echo "impossible!" # it returns "false" explicitly after executing 2nd Expr.


## Lists of Commands:  
A list is a sequence of one or more pipelines separated by one of the below operators.
> ‘;’, ‘&’, ‘&&’, or ‘||’, and optionally terminated by one of ‘;’, ‘&’, or a newline.

## Precedence:
- list operators, ‘&&’ and ‘||’ have equal precedence followed by ‘;’ and ‘&’, which have equal precedence.
- If a command is terminated by the **control operator &**, the shell executes the command in the background in
a subshell, shows the output after executing the other commands ended with (;).
- Pipelines: a sequence of one or more commands separated by one of the control operators | or |&.

## Examples:
1. An AND list has the form
> command1 && command2
> 
> command2 is executed if, and only if, command1 returns an exit status of zero (success).

2. An OR list has the form
> command1 || command2
> 
> command2 is executed if, and only if, command1 returns a non-zero exit status
