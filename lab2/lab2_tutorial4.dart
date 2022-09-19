/// Author: Rinil Parmar
/**
 * Roll No: CE084
 * Lab 2 - Tutorial 4
 * Chapter 4: Control Flow
 */
import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;
// enum Weather{sunny, snowy, cloudy, rainy}
// enum AudioState{playing, paused, stopped}
void main() {
  /*CONTROL FLOW*/
  //we can control flow of execution by decision making in the code

  //MAKING COMPARISONS
    //BOOLEAN VALUES
    //Dart has data type called bool which stores one of the boolean values
    //i.e. true or false
    // const bool boolVariable = true;
    // const otherBool = false;
    //by inference, otherBool will get bool as its data type
    //here true and false are keywords

    //BOOLEAN OPERATORS
    //booleans are commonly used to compare values
    //like when they are equal or not equal

    //TESTING EQUALITY
    //we can test for equality using ==
    // const result = (1 == 2);
    // print(result);  //output: false
    //as 1 is not equal to 2, result holds false
    //we can also compare relatable types like int and double
    // const int intNumber = 2;
    // const double doubleNumber = 2.0;
    // print(intNumber == doubleNumber); //output: true

    //TESTING INEQUALITY
    //we can test for inequality using !=
    // const result = (1 != 2);
    // print(result);  //output: true
    //as 1 is not equal to 2, result holds true
    //operator ! is called not operator or bang operator
    //it toggles values from true to false and false to true
    //(1 != 2) is same as !(1 == 2) both resulting in true

    //TESTING GREATER AND LESS THAN
    //we can test if one value is greater than other value by greater than operator(>)
    //we can test if one value is smaller than other value by less than operator(<)
    // const lessThan = (1 < 2);
    // const greaterThan = (1 > 2);
    // print(lessThan);  //output: true
    // print(greaterThan); //output: false
    //along with comparison, we can also check for equality using less than or equal to operator(<=) and greater than or equal to operator(>=)
    // print(2 <= 2); //output: true
    // print(3 >= 3);  //output: true

    //BOOLEAN LOGIC
    //in boolean logic we can combine multiple conditions to form result

    //1. AND operator
    //AND is denoted by &&
    //if all conditions are true, then the result is true
    //else it is false
    // print((1 == 1) && (2 < 4)); //output: true
    // print((1 == 2) && (2 < 4)); //output: false

    //2. OR operator
    //OR is denoted by ||
    //if any one condition is true, then the result is true
    //else it is false
    // print((1 == 1) || (2 > 4)); //output: true
    // print((1 != 1) || (2 > 3)); //output: false

    //OPERATOR PRECEDENCE
    //boolean logic can combine two or more conditions with AND or OR to form complex comparison
    //but it gets confusing solving them without parenthesis, which condition combine with which one
    //e.g. 3 > 4 && 1 < 2 || 1 < 4
    //results in false && true || true
    //if we combine false && true, result is true
    //but if we combine true || true, result is false
    //operator precedence shows order in which boolean expressions are solved
    // !
    // >=, >, <=, <
    // ==, !=
    // &&
    // ||
    //operators higher in list are executed before operators lower in list

    //OVERRIDING PRECEDENCE WITH PARENTHESES
    //we can change default operator precedence by putting parentheses in the boolean expression
    //e.g. 3 > 4 && (1 < 2 || 1 < 4)  //resuts to false
    //(3 > 4 && 1 < 2) || 1 < 4 //results to true

    //STRING EQUALITY
    //strings can also be compared using equality operator(==)
    // const guess = 'dog';
    // const dogEqualCat = guess == 'cat';
    // print(dogEqualCat); //output: false

  /*MINI-EXERCISE*/
  //1.
  // const myAge = 20;
  // const isTeenager = (myAge > 13 && myAge < 19);
  // print(isTeenager);  //output: false
  
  //2.
  // const maryAge = 30;
  // const bothTeenagers = (maryAge > 13 && maryAge < 19) && isTeenager;
  // print(bothTeenagers); //output: false

  //3.
  // const String reader = 'Rinil';
  // const String ray = 'Ray Wenderlich';
  // const rayIsReader = reader == ray;
  // print(rayIsReader); //output: false

  //IF STATEMENT
  //most common way to control flow of program
  //checks a condition and if result is true it executes statements in if block
  // if(2 > 1){
  //   print('2 greater than 1');  //output: 2 greater than 1
  // }
  //condition in if statement is always boolean expression
  //when if condition is false it doesn't execute if block

  //ELSE CLAUSE
  //we can have code which run when if condition results in false, this is else clause
  // const animal = 'cat';
  // if(animal == 'dog' || animal == 'fox'){
  //   print('dog or fox');
  // }
  // else{
  //   print('not dog and not fox');
  // }
  //output: not dog and not fox

  //ELSE-IF CHAINS
  //we want to check condition and then another condition if first condition isn't true and so on
  //this is achieved by else-if clause
  // const number = 3;
  // if(number < 3){
  //   print('number less than 3');
  // }
  // else if(number == 3){
  //   print('number is 3');
  // }
  // else{
  //   print('number greater than 3');
  // }
  //output: number is 3
  //first it check if number is less than 3 => No
  //then it check if number equal to 3 => Yes
  //execute else if block
  //it checks until a true condition is not found, else it execute else block
  //once it finds true condition, it doesn't check later conditions

  //VARIABLE SCOPE
  //scope of a variable is extent to which the variable can be accessed
  //when we use curly braces it defines scope, variables in curly braces can't be accessed from outside
  // const String outside = 'outside curly braces';
  // {
  //   const String inside = 'inside curly braces';
  //   print(outside); //output: outside curly braces
  //   print(inside);  //output: inside curly braces
  // }
  // print(outside); //output: outside curly braces
  // print(inside);  //error: undefined name- inside
  //as inside can't be accessed from outside curly braces
  //here inside has local scope to curly braces whereas outside is outside any function and inside main method

  //TERNARY CONDITIONAL OPERATOR
  //it has 3 operands: condition to check, statement if true and statement if false
  //it is similar to if-else statement
  // const score = 38;
  // if(score >= 50){
  //   print('more than or equal to 50');
  // }
  // else{
  //   print('less than 50');
  // }
  //the above code and below code are equivalent
  // const score = 38;
  // (score >= 50) ? {print('more than or equal to 50')} : {print('less than 50')};
  //both have output less than 50
  //first condition is checked, if it results in true statement after ? is executed and if it result in false statement after : is executed

  /*MINI-EXERCISE*/
  //1.
  // const myAge = 20;
  // if(myAge > 13 && myAge < 19){
  //   print('Teenager');
  // }
  // else{
  //   print('Not a teenager');  //output: Not a teenager
  // }
  //2.
  // const result = (myAge > 13 && myAge < 19) ? 'Teenager' : 'Not a teenager';
  // print(result); //output: Not a teenager

  //SWITCH STATEMENT
  //the general syntax is as below:
  // switch(variable){
  //   case value1:
  //     //code
  //     break;
  //   case value2:
  //     //code
  //     break;
  //     .
  //     .
  //     .
  //   default:
  //     //code
  // }
  //switch maps variable's value to one of the case value and execute that case
  //if none case is matched then default is executed
  //break is used to break out of switch case statement so that only one case is executed
  //the switch statement is similar to if else-if statement
  // const number = 3;
  // switch(number){
  //   case 1:
  //     print('one');
  //     break;
  //   case 2:
  //     print('two');
  //     break;
  //   case 3:
  //     print('three');
  //     break;
  // }
  //output: three
  //the variable can be of type String and case value can be String to match the variable

  //ENUMERATED TYPES
  //also called enums
  //enums can be used in place of case values
  //place enums outside main function
  //define enum with enum keyword and capitalize first letter of enum name and the values in enum use lowerCamelCase
  //
  // const weather = Weather.cloudy;
  // switch(weather){
  //   case Weather.cloudy:
  //     print('cloudy day');
  //     break;
  //   case Weather.rainy:
  //     print('rainy day');
  //     break;
  //   case Weather.snowy:
  //     print('snowy day');
  //     break;
  //   case Weather.sunny:
  //     print('sunny day');
  //     break;
  // }
  //output: cloudy day
  //as we handled all cases, no need for default
  //if we print enum we get its value
  // print(weather); //output: Weather.cloudy
  //we can also get index of value
  // print(weather.index); //output: 2
  //index is 0-based

  /*MINI-EXERCISE*/
  //1.
  //created outside main()
  //2.
  // const audioState = AudioState.paused;
  // switch(audioState){
  //   case AudioState.playing:
  //     print('playing an audio');
  //     break;
  //   case AudioState.paused:
  //     print('paused an audio');
  //     break;
  //   case AudioState.stopped:
  //     print('stopped an audio');
  //     break;
  // }
  //output: paused an audio
}
