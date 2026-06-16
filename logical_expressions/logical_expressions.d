#!/usr/bin/env dub

/+ dub.sdl:
      name "logical_expressions"
      description "Program to show logical expressions in D"
 +/

import std.stdio : write, writeln, readf;

void main() {
  write("How many are we: ");
  int personCount;
  readf(" %d", &personCount);      // The space before %d is for the Enter Character

  write("How many bicycles are there: ");
  int bicycleCount;
  readf(" %d", &bicycleCount);

  write("What is the distance to the beach: ");
  int distance;
  readf(" %d", &distance);

  write("Is there a car: ");
  bool carExists;
  readf(" %s", &carExists);

  write("Is there a driver's license: ");
  bool license;
  readf(" %s", &license);

  // Now the next line is a logical expression (OR ||) which will evaluate 
  // to true even if one of the expression is true
  // && evalues to true only if both expressions are true
  writeln("We are going to the beach: ", 
    (carExists && license) || (bicycleCount != 0 && bicycleCount >= 1) ||
    (personCount > 1) || (distance != 0 && distance >= 1) 
  );
}
