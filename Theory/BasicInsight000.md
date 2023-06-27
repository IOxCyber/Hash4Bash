# BasicInsight

1. The Dollar `$` character is used for parameter expansion `${var}`, arithmetic expansion `$((expr var1 + var2))` and command substitution `$(command)`.
2. There are no `**Booleans in Bash**`. However, we can define the shell variable having value as `0 (“ False “) or 1 (“ True “)` as per our needs, Bash does have Boolean expressions in terms of comparison and conditions.

###

3. **Bash expression**: Combination of operators, features, or values used to form a bash conditional statement. The conditional expression could be a binary or unary expression that involves numeric, string, or any commands whose `return status is zero when successful` check with `echo $?`.
4. In bash, prefer double [[ over [.
   - For arithmetic operations (numbers), prefer (( over [[.
   - `(( is an arithmetic operation while [[ is used for strings`.

###

## 5. AND and OR short-circuits: a short form of if-then-else
- can be used for any file existence, variable value, or comparator.
> logical AND stops processing once the first false is found.
  - eg 1. `[ 1 -eq 0 ] && echo "True" || echo "False!"` # This will print False as `[ 1 -eq 0 ]` will return False, AND will never execute second Expr as first false is found and print False!
  - eg 2. `[ 1 -eq 1 ] && echo "True" || echo "False!"` # This will print True as `[ 1 -eq 1 ]` will return True, AND will execute second Exp i.e echo "True" and print True
  
> `logical OR stop processing once first true is found`. [More](https://fabianlee.org/2020/10/14/bash-using-logic-expressions-as-a-shorthand-for-if-then-else-control/)
 
**Note**: Side effects. if the test is true but the first expression returns a non-zero result then the second expression will also be evaluated – which is probably unexpected.
> eg. $ [ 1 -eq 1 ] && { echo "correct, 1 does indeed equal 1";false; } || echo "impossible!" # it returns "false" explicitly after executing 2nd Expr.


### 6. Shell Parameter Expension:
- The ‘$’ character introduces parameter expansion, command substitution, or arithmetic expansion.

## 6. "Parameter Expansion" ${parameter:offset:length}:

