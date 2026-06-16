#!/usr/bin/env dub

/+ dub.sdl:
      name "fundamental_types"
      description "Fundamental Data Types in D"
 +/

import std.stdio : writeln;

void main() {
  writeln("Type             : ", int.stringof);
  writeln("Length in Bytes  : ", int.sizeof);
  writeln("Minimum Value    : ", int.min);
  writeln("Maximum Value    : ", int.max);
  writeln("Initial Value    : ", int.init);
}

/*
 * Other types include 
 * TYPE        Definition          INITIAL VALUE
 * bool       Boolean Type            false
 * byte      signed 8 bits            0
 * ubyte     unsigned 8 bits          0
 * short     signed 16 bits           0
 * ushort    unsigned 16 bits         0
 * int       signed 32 bits           0
 * uint      unsigned 32 bits         0
 * long      signed 64 bits           0L
 * ulong     unsigned 64 bits         0LU
 * float         32 bits            float.nan
 * double        64 bits            double.nan
 * real      at least 64 bits       real.nan     (If hardware provides more than 64 bits, 
                                                      it can be more than 64 bits)
 * char       UTF-8 Code Unit        0xFF
 * wchar      UTF-16 Code Unit       0XFFFF
 * dchar      UTF-32 Code Unit       0x0000FFFF
              and Unicode Code
                   Point
 */
