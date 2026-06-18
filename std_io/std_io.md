# Standard Input Output in D 

The basic functions to print stuff in D is `writeln` and `write`.

They are shortcuts for `stdout.writeln` and `stdout.write`.

So basically we can also print stuff like this 

```d
import std.stdio;

void main() {
  stdout.writeln("Hello World!");
}
```

# Exercise 

Observe that stdout.write works the same as write.

Solution File: [std_io.d](./std_io.d)
