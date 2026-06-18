#!/usr/bin/env dub

/+ dub.sdl:
      name "read_stdin"
      description "Read from Standard Input in D"
 +/

import std.stdio : write, writeln, readf;

void main() {
  int studentCount;

  write("Enter student count: ");
  readf("%d", &studentCount);

  writeln("Student count: ", studentCount);
}
