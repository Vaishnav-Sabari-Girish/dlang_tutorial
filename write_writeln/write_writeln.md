# `write` and `writeln`

There are 2 printing functions in D `write` (No newline) and `writeln` (Newline)

`writeln` can take more than one argument

```d
#!/usr/bin/env dub

/+ dub.sdl:
      name "write_writeln"
      description "Printing functions in D"
 +/

import std.stdio : writeln;

void main() {
  // Program 1
  write("Hello,");
  write("World");

  writeln();

  // Program 2
  writeln("First Argument", "Second Argument");
}
```

## Exercise 

1. Both of the programs in this chapter print the strings without any spaces between them. Change the programs so that there is space between the arguments as in `"Hello, World!"`.
2. Try calling `write` with more than one parameter as well.

Solution file: [write_writeln.d](./write_writeln.d)
