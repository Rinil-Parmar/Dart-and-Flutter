/// Author: Rinil Parmar
/**
 * Roll No: CE084
 * SDP: Lab 2 - Tutorial 2
 * Chapter 2: Expressions, Variables & Constants
 */

import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import "dart:math";

void main() {

/*
//TYPES OF COMMENTS

//1.single line comment(//)
//2.multi line comment(/* */)
//-->we can also create comment blocks.
/* This is also a comment. Over many...
many...
many lines. */
//-->nested comment is also allowed

/* This is a comment.
/* And inside it is
another comment. */
Back to the first. */

//3.Documentation comment
///I am documatation comment
///author:Rinil Parmar
///When you click enter it will generate a new comment automatically.
//block documentation comments are enclosed between 
/**
 *  
 * and */.
*/

//PRINTING OUTPUT
  //print will output whatever we want to the debug console
  // print('Hello world: ${lab2_tutorial2.calculate()}!');
  // print("Hello,Dart Apprentice reader!");
  //printing is easy way to monitor code

//STATEMENTS
//A statement is a command, something you tell the computer to do.
//All simple satatement end with semicolon.
//print is simple statements and if is example of complex statement.

//EXPRESSIONS
//An doesn’t do something; it is something.
//an expression is a value, or is something that can be calculated as a value.
//Examples 
  //42, 3 + 2
  //3+2;
  // print(3 + 10); //this will output 13
  // print(5 / 0); //this will give Infinity as output
  // int x;
  // x;
  // The above code will give error like this:-The non-nullable local variable 'x' must be assigned before it can be used.
  // Try giving it an initializer expression, or ensure that it's assigned on every execution path

  //ARITHMETIC OPERATIONS
  //SIMPLE OPERATIONS
  //Add: 2 + 6
  //Subtract: 10 - 2
  //Multiply: 2 * 4
  //Divide: 24 / 3
  // print(2 + 6);  //8
  // print(10 - 2); //8
  // print(2 * 4);  //8
  // print(24 / 3); //8.0

  //We can use arithmetic operators with decimal numbers and we have use arithmetic operation on whole numbers in above part
  //print(22/7); //output: 3.142857142857143
  //if we want integer division then we have to use ~/ operator
  //this is called truncating division
  // print(22 ~/ 7); //output: 3

  //EUCLIDEAN MODULO OPERATION
  //print(28 % 10); //output: 8
  //calculates remainder

  //ORDER OF OPERATION
  // print(((8000 / (5 * 10)) - 32) ~/ (29 % 5)); //output: 32
  //((8000 / 50) - 32) ~/ (4)
  //(160 - 32) ~/ (4)
  //128 ~/ 4
  //32
  //using parantheses serve two purpose: to make it clear to understand and read the code, and to disambigute the intended order of operation.
  //like other languages multiplication and division has highest precedence and addition and subtraction has the same precedence but lesser than multiplication and division
  //% and ~/ operators has same precedence as multiplication and division
  // print(350 / 5 + 2); //output: 72.0
  //in above expression 350/5 first computed and then 2 is added in result.
  //It is preferable to use parantheses when we are not clear about precedence of operators.

  //MATH OPERATION
  //to use math function we have to import math library of dart
  //import 'dart:math';
  // print(sin(45* pi / 180)); //this will convert degree to radian and take sin of it
  //in above statement, pi is built-in constant in dart language
  //Output: 0.7071067811865476
  //Similarly, there are other trigonometry functions like cos, tan etc.
  //there are other mathematical functions in math library like sqrt
  //sqrt perform square root of the given number in argument
  // print(sqrt(2));
  //output: 1.4142135623730951
  //Other basic functions including max and min are provided
  // print(max(4,3));  //output: 4
  //max function return maximum of the two numbers provided in argument
  //if either argument is NaN it return NaN.
  // print(min(4,3));  //output: 3
  //min function return minimum of the two numbers provided in argument
  //if either argument is NaN it return NaN.

  /*MINI-EXERCISE*/
  // print(1 / sqrt(2)); //output: 0.7071067811865475
  // print(sin(45 * pi / 180));  //output: 0.7071067811865476
  //As both the values are same sin(45deg) = 1/sqrt(2);

  //NAMING DATA
  //Rules for naming identifiers:
    //1. name can include both letter and digits
    //2. name cannot start with digit
    //3. name cannot include special symbols except _ and $.
    //4. name cannot be keywords
    //5. name must be unique
    //6. name is case-sensitive
    //7. name cannot contain space
  //eg: Valid - name, maxNumber, max_number, $answer
  //Invalid - 12name, max number, case

   //KEYWORDS
  //There are certain words that have special meaning in programming language.
  //eg: abstract, case, for, if, import, true, false, etc.
  
  //VARIABLES
  // int number = 10;
  // number = 5;
  // print(number);  //output: 5
  //variable is container which can change its value during execution of a program.
  //the above code declares a variable named number of type integer and assigns 10 to it
  //in the second line variable's value is changed to 5
  //in the third line value of variable is printed
  //The data type of value assigned to the variable must match data type of valriable
  //similarly for decimal numbers we can use double
  //double double_number = 123.456789;
  //above statement declares variable double_number with value 123.456789
  //double denotes double precision floating point numbers.
  //All data types are inherited from Object class indirectly
  //Dart doesn't have primitive data types unlike other languages
  //all values are objects
  // print(10.isEven); //output: true
  //we can chaeck if number is even/odd, finite/infinite, NaN, etc as 10 is object in the above line

  //TYPE SAFETY
  //Dart is type safe language: once we declare a variable type we can't change it later.
  // int number = 10;
  // number = 1.2345;  //invalid assignment
  //as number is int data type, we can't assign double to it
  //but it is possible to assign similar data types to same variable using num
  // num other_number = 5;
  // print(other_number);  //output: 5
  // other_number = 1.234;
  // print(other_number);  //output: 1.234
  // other_number = 'a';   //not allowed as num not related with character/string
  //num can hold only int or double
  //dynamic type can hold any data type to variable
  // dynamic next_variable = 5;
  // print(next_variable); //output: 5
  // next_variable = 1.234;
  // print(next_variable); //output: 1.234
  // next_variable = 'Hello';
  // print(next_variable); //output: Hello
  //but we should avoid using dynamic
  //using var keyword we can declare variable of whatever type is assigned to that variable
  // var someNumber = 5;
  // //automatically tells someNumber is int
  // someNumber = 1.23;
  // print(someNumber.runtimeType);  //output: int

   //CONSTANTS
  //1. const keyword
  //2. final keyword
  //const: using const we can create constant which is immutable data
  //i.e. we can't change their value in later stage
  // const constant_number = 5;
  // constant_number = 4;  //we can't assign anything to constant later
  //similar to var, it assign int to constant_number as its type
  //const is only used for compile-time constants
  //final: used to make run-time constant
  // final hour_of_day = DateTime.now().hour;
  // print(hour_of_day); //output: 16 when run at 16:36
  // hour_of_day = 21; //shows error hour_of_day can be set only once
  //here constant returned is decided during run-time
  //hence we must use final instead of const

  //USING MEANINGFUL NAMES
  //we should always use meaningful names for your variables
  //it increase readbility of your code and helpful during documentation
  // int personAge;
  // double marksAverage;
  //Standard is to use camel casing in Dart
  //Rules:
  //1. start with lower case letter
  //2. if name made of multiple words, join them and capitalize first letter of words after first word
  //3. treat abbreviations like words

  /*MINI EXERCISE*/
  //1.
  // const myAge = 19;
  //2.
  // double averageAge = 19;
  // averageAge = (19 + 20) / 2;
  //3.
  // const testNumber = 20;  //case1: 25, case2: 20
  // const evenOdd = testNumber % 2;
  // print(evenOdd); //case1: 1, case2: 0
  
  //INCREMENT AND DECREMENT
  //incrementing a variable is adding 1 to its value
  //decrementing a variable is subtracting 1 from its value
  // int counter = 0;
  // counter += 1; //counter is incremented
  //counter += 1 equivalent to counter = counter + 1 equivalent to counter++
  //incrementing changes counter to 1
  // print(counter); //output: 1
  // counter -= 1; //counter is decremented
  //counter -= 1 equivalent to counter = counter - 1 equivalent to counter--
  //decrementing changes counter back to 0
  // print(counter); //output: 0
  //similar shorthand notations for multiplication and division:
  // double value = 5;
  // value *= 2; //changes value to 10
  // value /= 2; //changes value to 5
  // print(value); //output: 5.0
  
  /*CHALLENGES*/
  //Challenge 1: Variables
    // const int myAge = 20;
    // int dogs = 0;
    // dogs++;
    // print(myAge); //output: 20
    // print(dogs);  //output: 1
  //Challenge 2: Make it compile
    // int age = 16;
    // print(age); //output: 16
    // age = 30;
    // print(age); //output: 30
    //we can use both var or int, but we can't use final or const
    //because we are changing the value of age again
  //Challenge 3: Compute the answer
    // const x = 46;
    // const y = 10;
    // const answer1 = (x * 100) + y;  //output: 4610
    // const answer2 = (x * 100) + (y * 100);  //output: 5600
    // const answer3 = (x * 100) + (y / 10); //output: 4601.0
    //due to division, the data type is set to float in answer3
  //Challenge 4: Average rating
    // const double rating1 = 1.5, rating2 = 3.2, rating3 = 4.8;
    // const averageRating = (rating1 + rating2 + rating3) / 3;
    // print(averageRating); //output: 3.1666666666666665
  //Challenge 5: Quadratic equations
    // const double a = 1, b = -1, c = 1;
    // final double root1 = (-b + sqrt(b*b - 4*a*c)) / (2*a);
    // final double root2 = (-b - sqrt(b*b - 4*a*c)) / (2*a);
    // print(root1);
    // print(root2);
}




