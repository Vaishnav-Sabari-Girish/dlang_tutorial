# Assignment operations and order of evaluation 

Similar to all languages, here is how to assign a value to a variable in D 

```d
a = 10;
b = 20;
```

## Order of evaluation

The order is sequential i.e step-by-step


# Exercise 


Observe that the following three operations swap the values of a and b. If at the beginning their values are 1 and 2 respectively, after the operations the values become 2 and 1:

```d
c = a;
a = b;
b = c;
```

Solution File: [assignment_evaluation.d](./assignment_evaluation.d)
