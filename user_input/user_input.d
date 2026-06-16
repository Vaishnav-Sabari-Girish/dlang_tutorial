#!/usr/bin/env dub

/+ dub.sdl:
      name "user_input"
      description "Program to read from standard Input in D"
 +/

import std.stdio : write, writeln, readf;

void main() {
  int studentCount;
  write("Number of students: ");
  readf("%d", &studentCount);

  writeln("Number of students is : ", studentCount);
}
