# If Statement 

_Statements_ are features that affect the execution of expressions. Statements don't produce values and don't have side effects themselves. They determine whether and in what order the expressions are executed. Statements sometimes use logical expressions when making such decisions. 

```d
#!/usr/bin/env dub

/+ dub.sdl:
      name "if_statement"
      description "D program demonstrating the IF statement"
 +/

import std.stdio : writeln;

void main() {
    bool existsCoffee = true;
    bool existsTea = false;

    if (existsCoffee) {
        writeln("Drink coffee");
        writeln("Wash the cup");
    } else if (existsTea) {
        writeln("Drink Tea");
    } else {
        writeln("Drink Water");
    }
}
```

## Exercise 

1. Since the logical expression below is true, we would expect this program to drink lemonade and wash the cup:

```d
import std.stdio;

void main() {
    bool existsLemonade = true;

    if (existsLemonade) {
        writeln("Drinking lemonade");
        writeln("Washing the cup");

    } else
        writeln("Eating pie");
        writeln("Washing the plate");
}
```

But when you run that program you will see that it washes the plate as well:

```text
Drinking lemonade
Washing the cup
Washing the plate
```

Why? Correct the program to wash the plate only when the logical expression is false.

2. Write a program that plays a game with the user (obviously with trust). The user throws a die and enters its value. Either the user or the program wins according to the value of the die:

```text
Value of the die         Output of the program
        1                      You won
        2                      You won
        3                      You won
        4                      I won
        5                      I won
        6                      I won
 Any other value               ERROR: Invalid value
```

Bonus: Have the program also mention the value when the value is invalid. For example:

```text
ERROR: 7 is invalid
```

3. Let's change the game by having the user enter a value from 1 to 1000. Now the user wins when the value is in the range 1-500 and the computer wins when the value is in the range 501-1000. Can the previous program be easily modified to work in this way? 

Solution file: [if_statement.d](./if_statement.d)
