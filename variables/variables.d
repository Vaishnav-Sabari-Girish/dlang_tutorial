#!/usr/bin/env dub

/+ dub.sdl:
      name "variables"
      description "D Program introducing variables"
 +/

import std.stdio : writeln;

void main() {
  int studentCount;

  writeln("There are ", studentCount, " students before admission");

  studentCount = 200;

  writeln("After admission, there are now ", studentCount, " students");
}
