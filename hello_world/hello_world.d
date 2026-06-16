#!/usr/bin/env dub

/+ dub.sdl:
      name "hello_world"
      description "Printing stuff in D"
 +/

import std.stdio : writeln;

void main() {
  // 1. Make the program output something else
  writeln("This is something else");

  // 2. Change the program output to more than one line. 
  writeln("This is second line.");
  writeln("This is third line");

  // 3. Check compilation error (Uncomment to check)
  // writeln("Compilation error!")
}
