# Logical Expressions

Any part of a program that produces a value or a side effect is called an expression.

We have 4 main logical expressions 

## OR

Denoted by `||`

`false` = `0`, `true` = `1`


| Left Expressions | Right Expression | Result |
| --------------- | --------------- | --------------- |
| 0 | 0 | 0 | 
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |


## AND

Denoted by `&&`

`false` = `0`, `true` = `1`


| Left Expressions | Right Expression | Result |
| --------------- | --------------- | --------------- |
| 0 | 0 | 0 | 
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


## XOR 

Denoted by `^`

`false` = `0`, `true` = `1`


| Left Expressions | Right Expression | Result |
| --------------- | --------------- | --------------- |
| 0 | 0 | 0 | 
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |


## Comparison operators 

Denoted by `<`, `>`, `==`, and `!=`


# Exercise 

1. We've seen above that the `<` and the `>` operators are used to determine whether a value is less than or greater than another value; but there is no operator that answers the question "is between?" to determine whether a value is between two other values.
Let's assume that a programmer has written the following code to determine whether value is between 10 and 20. Observe that the program cannot be compiled as written:

```d
import std.stdio;

void main() {
    int value = 15;

    writeln("Is between: ",
            10 < value < 20);        // ← compilation ERROR
}

Try using parentheses around the whole expression:

    writeln("Is between: ",
            (10 < value < 20));      // ← compilation ERROR
```

2. Observe that it still cannot be compiled.
While searching for a solution to this problem, the same programmer discovers that the following use of parentheses now enables the code to be compiled:

```d
    writeln("Is between: ",
            (10 < value) < 20);      // ← compiles but WRONG
```

Observe that the program now works as expected and prints "true". Unfortunately, that output is misleading because the program has a bug. To see the effect of that bug, replace 15 with a value greater than 20:

```d
    int value = 21;
```

Observe that the program still prints "true" even though 21 is not less than 20.

Hint: Remember that the type of a logical expression is `bool` It shouldn't make sense whether a `bool` value is less than 20. The reason it compiles is due to the compiler converting the boolean expression to a 1 or 0, and then evaluating that against 20 to see if it is less.

3. The logical expression that answers the question "is between?" must instead be coded like this: "is greater than the lower value and less than the upper value?".

Change the expression in the program according to that logic and observe that it now prints "true" as expected. Additionally, test that the logical expression works correctly for other values as well: for example, when value is 50 or 1, the program should print "false"; and when it is 12, the program should print "true".

4. Let's assume that we can go to the beach when one of the following conditions is true:

- If the distance to the beach is less than 10 miles and there is a bicycle for everyone
- If there is fewer than 6 of us, and we have a car, and at least one of us has a driver license

As written, the following program always prints "true". Construct a logical expression that will print "true" when one of the conditions above is true. (When trying the program, enter "false" or "true" for questions that start with "Is there a".).

```d
import std.stdio;

void main() {
    write("How many are we? ");
    int personCount;
    readf(" %s", &personCount);

    write("How many bicycles are there? ");
    int bicycleCount;
    readf(" %s", &bicycleCount);

    write("What is the distance to the beach? ");
    int distance;
    readf(" %s", &distance);

    write("Is there a car? ");
    bool existsCar;
    readf(" %s", &existsCar);

    write("Is there a driver license? ");
    bool existsLicense;
    readf(" %s", &existsLicense);

    /* Replace the 'true' below with a logical expression that
     * produces the value 'true' when one of the conditions
     * listed in the question is satisfied: */
    writeln("We are going to the beach: ", true);
}
```

Enter various values and test that the logical expression that you wrote works correctly.

Solution file: [logical_expressions.d](./logical_expressions.d)
