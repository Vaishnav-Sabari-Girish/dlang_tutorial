#!/usr/bin/env dub

/+ dub.sdl:
      name "if_statement"
      description "Program to demonstrate if statement in D"
 +/

import std.stdio : write, writeln, readf;

void main() {
  write("Do you have a GF [true/false]: ");
  bool existsGf;
  readf(" %s", &existsGf);

  if (existsGf) {
    writeln("You traitor");
  } else {
    writeln("You gonna stay single for life");
  }
}
