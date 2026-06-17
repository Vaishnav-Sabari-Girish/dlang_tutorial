#!/usr/bin/env dub

/+ dub.sdl:
      name "variables"
      description "Program to demonstrate variables in D"
 +/

import std.stdio : writeln;

void main() {
  int value = 20;
  double rate = 2.11;

  writeln("I have exchanged ", value, " euros at the rate of ", rate);
}
