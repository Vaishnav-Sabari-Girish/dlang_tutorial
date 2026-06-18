#!/usr/bin/env dub

/+ dub.sdl:
      name "logical_expressions"
      description "Logical Expressions in D"
 +/

import std.stdio : write, writeln, readf;

void main() {
  write("How many are we ?: ");
  int personCount;
  readf(" %d", &personCount);

  writeln();

  write("How many bicycles are there ?: ");
  int bicycleCount;
  readf(" %d", &bicycleCount);

  writeln();

  write("What is the distance to the beach ?: ");
  int distance;
  readf(" %d", &distance);

  writeln();

  write("Is there a car ?: ");
  bool carExists;
  readf(" %s", &carExists);

  writeln();

  write("Is there a driver license ?: ");
  bool license;
  readf(" %s", &license);

  writeln();

  bool beach_going = (carExists && license) && (personCount > 0) || (bicycleCount > 0) && (distance > 0);

  writeln("Are we going to the beach: ", beach_going);
}
