# BasicInsight

1. The Dollar ($) character is used for parameter expansion, arithmetic expansion and command substitution.
2. There are no **Booleans in Bash**. However, we can define the shell variable having value as 0 (“ False “) or 1 (“ True “) as per our needs, Bash does have Boolean expressions in terms of comparison and conditions.
3. **Bash expression**: Combination of operators, features, or values used to form a bash conditional statement. Conditional expression could be binary or unary expression which involves numeric, string or any commands whose return status is zero when success.
4. In bash, prefer [[ over [. It's more powerful and less likely to act in unexpected ways. For arithmetic operations (numbers), prefer (( over [[. (( is an arithmetic operation while [[ is used for strings.

###

## 5. AND and OR short-circuits: short form of if-then-else
- can be used for any file existence, variable value, comparator.
> logical AND stops processing once first false is found.
  - eg 1. [ 1 -eq 0 ] && echo "True" || echo "False!" # This will print False as [ 1 -eq 0 ] will return False, AND will never execute second Expr as first false is foun and print False!
  - result >>1. false && echo "True" || echo "False!" >>2. false || echo "False!" >>3. will print False!
  
  - eg 2. [ 1 -eq 1 ] && echo "True" || echo "False!" # This will print True as [ 1 -eq 1 ] will return True, AND will execute second Exp i.e echo "True" and print True
  
> logical OR stop processing once first true is found. [More](https://fabianlee.org/2020/10/14/bash-using-logic-expressions-as-a-shorthand-for-if-then-else-control/)
 
**Note**: Side effects. if the test is true but the first expression returns a non-zero result then the second expression will also be evaluated – which is probably unexpected.
> eg. $ [ 1 -eq 1 ] && { echo "correct, 1 does indeed equal 1";false; } || echo "impossible!" # it returns "false" explicitly after executing 2nd Expr.


###

## 6. Local, Let, Declare
