#!/usr/bin/env dub

/+ dub.sdl:
      name "assignment_evaluation"
      description "Assignment and order of evaluation"
 +/

import std.stdio : writeln;

void main() {
  int a = 1;
  int b = 2;
  int c;

  writeln("Before swapping values of a: ", a, " and b: ", b);

  c = a;
  a = b;
  b = c;

  writeln("After swapping values of a: ", a, " and b: ", b);
}
