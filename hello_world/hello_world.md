# Hello World in D

`Hello, World!` is pretty straighforward. Using my format to write simple
programs in D, here is the code

```d
#!/usr/bin/env dub

/+ dub.sdl:
      name "hello_world"
      description "Printing Hello, World! in D"
 +/

import std.stdio: writeln;

void main() {
  writeln("Hello, World!");
}
```

## Exercise problem

The exercise problem given in the book is 

1. Make the program output something else.
2. Change the program to output more than one line. You can do this by adding one more writeln line to the program.
3. Try to compile the program after making other changes; e.g. remove the semicolon at the end of the line with writeln and observe a compilation error. 


The solution is in this file 

[solution](./hello_world.d)
