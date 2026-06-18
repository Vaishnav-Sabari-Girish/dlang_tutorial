# Read from Standard Input 

We use the `readf` function to read from `stdin`.

```d
import std.stdio: readf, writeln;

void main() {
  int studentCount;

  readf("%d", studentCount);

  writeln("Student Count: ", studentCount);
}
```

# Exercise 

Enter non-numerical characters when the program is expecting integer values and observe that the program does not work correctly.

Solution file: [read_stdin.d](./read_stdin.d)
