# Fundamental Data Types in D 

D has the following data types 

## Logical Expression Type 

| Type | Definition | Initial value |
| --------------- | --------------- | --------------- |
| `bool` | Boolean Type | `false` |



## Integer Types 

| Type | Definition | Initial value |
| --------------- | --------------- | --------------- |
| `byte`   | signed 8 bits    | `0`   | 
| `ubyte`  | unsigned 8 bits  | `0`   |
| `short`  | signed 16 bits   | `0`   |
| `ushort` | unsigned 16 bits | `0`   |
| `int`    | signed 32 bits   | `0`   |
| `uint`   | unsigned 32 bits | `0`   |
| `long`   | signed 64 bits   | `0L`  |
| `ulong`  | unsigned 64 bits | `0LU` |


## Floating Point Types 


| Type | Definition | Initial value |
| --------------- | --------------- | -------------------------------------------------------- |
| `float`  |                           32 bits                                 | `float.nan`   | 
| `double` |                           64 bits                                 | `double.nan`  |
| `short`  |  at least 64 bits, but can be more if the hardware provides more  | `real.nan`    |


## Character Types 

| Type | Definition | Initial value |
| --------------- | --------------- | --------------- |
| `char`  | UTF-8 Code Unit                         | `0xFF`       |
| `wchar` | UTF-16 Code Unit                        | `0xFFFF`     |
| `dchar` | UTF-32 Code Unit and Unicode Code point | `0x0000FFFF` |


## Weird Types

- `void`    : Has no Type 
- `cent`    : Signed 128-bit type 
- `ucent`   : Unsigned 128-bit type


## Example program 

This program prints the properties of the type (in this case `int`)

```d
#!/usr/bin/env dub

/+ dub.sdl:
      name "fundamental_types"
      description "Fundamental Data types in D"
 +/

import std.stdio : writeln;

void main() {
  writeln("Type            : ", int.stringof);     // Name of type
  writeln("Length in Bytes : ", int.sizeof);
  writeln("Minimum Value   : ", int.min);
  writeln("Maximum Value   : ", int.max);
  writeln("Initial Value   : ", int.init);
}
```


# Exercise 

Print the properties of other types. Notes:

- You can't use the reserved types `cent` and `ucent` in any program.
- `void` does not have the properties `.min`, `.max` and `.init`
- `.min`, `.max`, and `.init` values of character types do not have visible representations that you can see on the output.
- The `.min` property cannot be used for floating point types. (You can see all the various properties for the fundamental types in the D property specification). As we will see later in the Floating Point Types chapter, you must use the negative of the `.max` property e.g. as `-double.max` instead.


Solution file: [fundamental_types.d](./fundamental_types.d)
