#!/usr/bin/env dub

/+ dub.sdl:
      name "std_io"
      description "Standard Input Output in D"
 +/

import std.stdio;

void main() {
  stdout.writeln("Using stdout.writeln");

  writeln("Using basic writeln");
}
