import "dart:io";

void main() {
  stdout.write('Without New Line');
  // It does not end with new line character.
  // To use it, we need to import it from dart:io which is 1st line.
  print('Hello World');
  print(calculate());
  //This will call calculate function which is declated below.
}

int calculate() {
  return 7 * 8;
}

/*
  Output:
  Without New LineHello World
  56
*/
