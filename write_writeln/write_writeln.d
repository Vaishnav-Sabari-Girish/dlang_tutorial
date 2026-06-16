#!/usr/bin/env dub

/+ dub.sdl:
      name "write_writeln"
      description "Printing functions in D"
 +/

import std.stdio : write, writeln;

void main() {
  /*
  * 1. Both of the programs in this chapter print the strings without any spaces between them. 
  *    Change the programs so that there is space between the arguments as in "Hello, World!". 
  */ 
  writeln("Hello, World!", " Hello Fish!");

  write("Hello,");
  write(" World");
  writeln();

  // Try calling write with more than one parameter as well. 
  write("Hello,", " World");
  writeln();
}
