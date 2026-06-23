#!/usr/bin/env dub

/+ dub.sdl:
      name "if_statement"
      description "D program demonstrating the IF statement"
 +/

import std.stdio: write, writeln, readf;

void main() {
  answer1();
  answer2();
  answer3();
}

/* 
 * Since the logical expression below is true, we would expect this program to drink lemonade 
 * and wash the cup:
import std.stdio;

void main() {
    bool existsLemonade = true;

    if (existsLemonade) {
        writeln("Drinking lemonade");
        writeln("Washing the cup");

    } else
        writeln("Eating pie");
        writeln("Washing the plate");
}
 * But when you run that program you will see that it washes the plate as well:

Drinking lemonade
Washing the cup
Washing the plate

 * Why? Correct the program to wash the plate only when the logical expression is false. 
*/

void answer1() {
  bool existsLemonade = true;

  if (existsLemonade) {
    writeln("Drinking lemonade");
    writeln("Washing the cup");

  } else {
    writeln("Eating pie");
    writeln("Washing the plate");
  }

}


/*
 * Write a program that plays a game with the user (obviously with trust). 
 * The user throws a die and enters its value. Either the user or the program wins 
 * according to the value of the die:

Value of the die         Output of the program
        1                      You won
        2                      You won
        3                      You won
        4                      I won
        5                      I won
        6                      I won
 Any other value               ERROR: Invalid value

Bonus: Have the program also mention the value when the value is invalid. For example:

ERROR: 7 is invalid
*/
void answer2() {
  ushort die;

  write("Enter die value (1..6): ");
  readf(" %d", die);

  if (die == 1)
    writeln("You Won");
  else if (die == 2)
    writeln("You Won");
  else if (die == 3)
    writeln("You Won");
  else if (die == 4)
    writeln("I Won");
  else if (die == 5)
    writeln("I Won");
  else if (die == 6)
    writeln("I Won");
  else
    writeln("ERROR: ", die, " is invalid");
}


/*
 * Let's change the game by having the user enter a value from 1 to 1000. 
 * Now the user wins when the value is in the range 1-500 and the computer 
 * wins when the value is in the range 501-1000. Can the previous program be 
 * easily modified to work in this way? 
*/
void answer3() {
  uint num;

  write("Enter a number (1-1000): ");
  readf(" %d", num);

  if (num > 0 && num <= 1000) {
    if (num > 0 && num <= 500) 
      writeln("Computer Wins");
    else 
      writeln("You win");
  } else {
    writeln("Number ", num, " not in range");
  }
}
