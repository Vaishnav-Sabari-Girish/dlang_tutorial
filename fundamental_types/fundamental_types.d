#!/usr/bin/env dub

/+ dub.sdl:
      name "fundamental_types"
      description "Fundamental Data types in D"
 +/

import std.stdio : writeln;
import std.format: format;

void main() {
  writeln("Data Types Properties");
  writeln();


  // Integer
  /// byte 
  writeln("=======Integer (Byte)=======");
  writeln();
  writeln("Type            : ", byte.stringof);
  writeln("Length in Bytes : ", byte.sizeof);
  writeln("Minimum Value   : ", byte.min);
  writeln("Maximum Value   : ", byte.max);
  writeln("Initial Value   : ", byte.init);
  writeln();

  /// ubyte 
  writeln("=======Integer (ubyte)=======");
  writeln();
  writeln("Type            : ", ubyte.stringof);
  writeln("Length in Bytes : ", ubyte.sizeof);
  writeln("Minimum Value   : ", ubyte.min);
  writeln("Maximum Value   : ", ubyte.max);
  writeln("Initial Value   : ", ubyte.init);
  writeln();

  /// short
  writeln("=======Integer (short)=======");
  writeln();
  writeln("Type            : ", short.stringof);
  writeln("Length in Bytes : ", short.sizeof);
  writeln("Minimum Value   : ", short.min);
  writeln("Maximum Value   : ", short.max);
  writeln("Initial Value   : ", short.init);
  writeln();

  /// ushort
  writeln("=======Integer (ushort)=======");
  writeln();
  writeln("Type            : ", ushort.stringof);
  writeln("Length in Bytes : ", ushort.sizeof);
  writeln("Minimum Value   : ", ushort.min);
  writeln("Maximum Value   : ", ushort.max);
  writeln("Initial Value   : ", ushort.init);
  writeln();

  /// int
  writeln("=======Integer (int)=======");
  writeln();
  writeln("Type            : ", int.stringof);
  writeln("Length in Bytes : ", int.sizeof);
  writeln("Minimum Value   : ", int.min);
  writeln("Maximum Value   : ", int.max);
  writeln("Initial Value   : ", int.init);
  writeln();
  
  /// uint
  writeln("=======Integer (uint)=======");
  writeln();
  writeln("Type            : ", uint.stringof);
  writeln("Length in Bytes : ", uint.sizeof);
  writeln("Minimum Value   : ", uint.min);
  writeln("Maximum Value   : ", uint.max);
  writeln("Initial Value   : ", uint.init);
  writeln();

  /// long
  writeln("=======Integer (long)=======");
  writeln();
  writeln("Type            : ", long.stringof);
  writeln("Length in Bytes : ", long.sizeof);
  writeln("Minimum Value   : ", long.min);
  writeln("Maximum Value   : ", long.max);
  writeln("Initial Value   : ", long.init);
  writeln();

  /// ulong
  writeln("=======Integer (long)=======");
  writeln();
  writeln("Type            : ", ulong.stringof);
  writeln("Length in Bytes : ", ulong.sizeof);
  writeln("Minimum Value   : ", ulong.min);
  writeln("Maximum Value   : ", ulong.max);
  writeln("Initial Value   : ", ulong.init);
  writeln();

  // Floating Point
 
  /// float
  writeln("=======Floating Point (Float)=======");
  writeln();
  writeln("Type            : ", float.stringof);
  writeln("Length in Bytes : ", float.sizeof);
  writeln("Minimum Value   : ", -float.max);
  writeln("Maximum Value   : ", float.max);
  writeln("Initial Value   : ", float.init);
  writeln();

  /// double
  writeln("=======Floating Point (double)=======");
  writeln();
  writeln("Type            : ", double.stringof);
  writeln("Length in Bytes : ", double.sizeof);
  writeln("Minimum Value   : ", -double.max);
  writeln("Maximum Value   : ", double.max);
  writeln("Initial Value   : ", double.init);
  writeln();

  /// real
  writeln("=======Floating Point (real)=======");
  writeln();
  writeln("Type            : ", real.stringof);
  writeln("Length in Bytes : ", real.sizeof);
  writeln("Minimum Value   : ", -real.max);
  writeln("Maximum Value   : ", real.max);
  writeln("Initial Value   : ", real.init);
  writeln();

  // Character Type

  /// char
  /*
   * Type-casting is done since char is non-numeric 
   * so .min, .max and .init do not return numeric values.
   * format is used to format it into hexadecimal format
  */ 
  writeln("=======Character Type (char)========");
  writeln();
  writeln("Type            : ", char.stringof);
  writeln("Length in Bytes : ", char.sizeof);
  writeln("Minimum Value   : ", format("0x%02X", cast(ubyte)char.min));
  writeln("Maximum Value   : ", format("0x%02X", cast(ubyte)char.max));
  writeln("Initial Value   : ", format("0x%02X", cast(ubyte)char.init));
  writeln();

  /// wchar 
  writeln("=======Character Type (wchar)========");
  writeln();
  writeln("Type            : ", wchar.stringof);
  writeln("Length in Bytes : ", wchar.sizeof);
  writeln("Minimum Value   : ", format("0x%04X", cast(ushort)wchar.min));
  writeln("Maximum Value   : ", format("0x%04X", cast(ushort)wchar.max));
  writeln("Initial Value   : ", format("0x%04X", cast(ushort)wchar.init));
  writeln();

  /// dchar 
  writeln("=======Character Type (dchar)========");
  writeln();
  writeln("Type            : ", dchar.stringof);
  writeln("Length in Bytes : ", dchar.sizeof);
  writeln("Minimum Value   : ", format("0x%08X", cast(uint)dchar.min));
  writeln("Maximum Value   : ", format("0x%08X", cast(uint)dchar.max));
  writeln("Initial Value   : ", format("0x%08X", cast(uint)dchar.init));
  writeln();

  // Void 
  writeln("=======Void Type (void)========");
  writeln();
  writeln("Type            : ", void.stringof);
  writeln("Length in Bytes : ", void.sizeof);
}
