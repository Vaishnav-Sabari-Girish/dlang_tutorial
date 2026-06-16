#!/usr/bin/env dub

/+ dub.sdl:
      name "hello_world"
      description "Print Hello World"
 +/

import std.stdio : writeln;

void main() {
  writeln("Hello World!");
}
