/// Author: Rinil Parmar
/**
 * Roll No: CE084
 * SDP: Lab 2 - Tutorial 3
 * Chapter 3: Types & Operations
 */
import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main() {
  //DATA TYPES IN DART
  //Type is a way to tell compiler which data will be stored in the variable
  //Types can be int, double, num, dynamic, String
  //root of all types is Object which includes basic functionalities like equality and describing object in string
  //other types are sub-types of Object type

  //TYPE INFERENCE
  //1. Annotating variables explicitly
  //we can explicitly write data type of variable while declaring them
  // int myNumber = 10;

  //2. Creating constant variables
  //To create immutable variables and provide explicitly their data types
  // const int someNumber = 5;
  //above line creates integer constant and initialize to 5
  //If we make a variable constant, it makes sure no one changes the value in the later stage
  
  //3. Letting the compiler infer the type
  //Dart compiler is smart enough to infer the type of data given to constant and implicitly give data type
  // const myConstant = 5;
  //above line will make myConstant integer constant by infering data 5 as integer
  //this is known as type inference
  
  //4. Checking the inferred type in VS Code
  //to check the inferred type of variable, hover over the variable
  // const myNumber = 3;
  //On hovering myNumber will be shown of type int

  //5. Checking the type at runtime
  //to check runtime type of the variable in programmatic way, use is keyword to check with other type
  // int myInteger = 3;
  // print(myInteger is int); //output: true
  //the above line checks whether myInteger is int or not
  //another way to see the runtime type of variable, use variable.runtimeType
  // int myInteger = 3;
  // print(myInteger.runtimeType); //output: int

  //TYPE CONVERSION
  //converting one type to other related type is type conversion
  // var integer = 100;
  // var decimal = 12.5;
  // integer = decimal;  //error: value of double can't be assigned to variable of type int
  //two types of conversion:
    //1. Implicit conversion:
    //Dart disallows us to assign value of one type to other type
    //it avoids bugs and improve code performance
    //decimal = integer as well as integer = decimal is not allowed
    //2. Explicit conversion:
    //we have to tell compiler which conversion to carry out
    // double decimal = 1.23;
    // int integer = decimal.toInt(); //tells compiler to convert double to int
    // print(integer); //output: 1
    //converting double to int will cause loss of data as values after point(.) is not stored
  
  //OPERATORS WITH MIXED TYPES
  //When we perform operations having operands of mixed types, it tries to make result of higher type as data is not lost
  //For example, when int is multiplied with double type, result is made double
  // const hourlyRate = 19.25;
  // const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;
  // print(totalCost.runtimeType); //output: double
  // print(totalCost); //output: 192.5
  // final IntCost = totalCost.toInt();
  //we can explicitly tell which data type result should be stored
  // print(IntCost.runtimeType); //output: int
  // print(IntCost); //output: 192
  
  //ENSURING A CERTAIN TYPE
  //if we want to define constant of one type but we are assigning value of other type
  //we can use explicit convert value
  // final doubleNumber = 3.toDouble();
  //here we convert int value 3 to double and then assign to doubleNumber
  //OR
  // const doubleNumber1 = 3.0;
  //here we assign double value 3.0 to doubleNumber1
  //OR
  // const double actualDouble = 3.5;
  //here we tell compiler to declare actualDouble as double constant

  //CASTING DOWN
  //when variable of general type is used and function of subtype is used, we need to type cast
  //with as keyword, we can change the type of variable
  // num someNumber = 3;
  // print(someNumber.isEven); //error: getter 'isEven' not defined for num type
  // final someInt = someNumber as int;  //here we type cast someNumber to int
  // print(someInt.isEven);  //as someInt is int, we can use isEven
  //num becomes general type and may not know about even number which is specific to int
  //type casting may cause errors when we type cast into wrong type
  // num someNumber = 3;
  // final doubleNumber = someNumber as double;
  //as int is not subtype of double, it shows type cast error at runtime
  
  /*MINI-EXERCISE*/
  //1.
  // const age1 = 42;  //on hovering, it shows int age1
  // const age2 = 21;  //on hovering, it shows int age2
  //2.
  // const averageAge = (age1 + age2) / 2; //on hovering, it shows double averageAge
  // print(averageAge);  //output: 31.5
  //averageAge is double because age1 + age2 is integer but dividing it by 2 may cause decimal values

  /*STRINGS*/
  //In Dart, we can directly work with strings with String data type
  
  //STRINGS AND CHARACTERS
  // print("Hello, Dart!");
  // var greeting = "Hello, Dart!";
  //here Hello, Dart! is string literal
  //by inference, greeting treated as String
  //String in Dart is immutable, i.e. we can't change the value of String
  //although we can change the entire string
  // greeting = "Hello, Flutter!"; //valid
  // const letter = 'a';
  //although we assign only a character to letter variable, it is still of type String
  //Dart does not have character type.
  
  //SINGLE-QUOTES VS DOUBLE-QUOTES
  //In Dart, string literal can be denoted by both single and double quotes
  // String animal = 'cats'; //valid
  // String animal1 = "dogs";  //valid
  //Flutter style is to use single quotes
  //But when string contains apostrophe, we might want to use double quotes
  // const String apostrophe = "my cat's food";
  //or use escape sequence to escape apostrophe
  // const String apostrophe1 = 'my cat\'s food';

  //CONCATENATION
  //Adding one string to other string is known as concatenation
  //we can concatenate using + symbol
  // String message = 'Hello ' + 'my name is '; //adding string literals
  // const String name = 'Rinil';
  // message += name; //adding string variables
  // print(message); //output: Hello my name is Rinil
  //we can't declare message as const because we are modifying the variable
  //To create mutable string, use StringBuffer
  // final message = StringBuffer();
  // message.write('hello');
  // message.write(' my name is ');
  // message.write('Rinil');
  // message.toString();  //convert StringBuffer to String type
  // print(message); //output: hello my name is Rinil
  
  //INTERPOLATION
  //We can build string from other string using interpolation using dollar($) sign
  // const name = 'Rinil';
  // const message = 'Hello my name is $name';
  // print(message); //output: Hello my name is Rinil
  //string can also include other data types
  // const oneThird = 1/3;
  // const sentence = 'One third is $oneThird';
  // print(sentence);  //One third is 0.3333333333333333
  //we can also limit the decimal places to fixed amount by toStringAsFixed
  // print('One third is ${oneThird.toStringAsFixed(3)}'); //output: One third is 0.333

  //MULTI-LINE STRINGS
  //We can have multi line strings using three single quotes or three double quotes
  // const multiLine = '''
  // Line1
  // Line2
  // Line3''';
  //also multi-line string preserves newlines in the string
  // print(multiLine);
  //output:
  //Line1
  //Line2
  //Line3
  //We can have multi line string without newlines by using seperate strings or concatenating them
  // const message = 'hello'
  // ' my name is '
  // 'Rinil';
  // print(message); //output: hello my name is Rinil
  //we can manually add newline by adding \n is the string
  // const message = 'line1\nline2';
  // print(message);
  //output:
  //line1
  //line2
  //we can even ignore the special characters of the string by using r before the string
  // const message = r'next line introduced by \n character';
  // print(message); //output: next line introduced by \n character

  /*MINI-EXERCISE*/
  //1.
  // const firstName = 'Rinil';
  // const lastName = 'Parmar';
  //2.
  // const fullName = firstName + ' ' + lastName;
  // print(fullName);  //output: Rinil Parmar
  //3.
  // const myDetails = 'Hello, my name is $fullName.';
  // print(myDetails); //output: Hello, my name is Rinil Parmar.

  //OBJECT AND DYNAMIC TYPE
  //unlike JavaScript, Dart gives compile-time error when we assign one type value to a variable of some other type
  // var myVariable = 42;
  // myVariable = 'hello'; //error: String can't be assigned to int
  //but we can make the type dynamic with dynamic type
  // dynamic myVariable = 42;
  // myVariable = 'hello'; //valid
  //if we don't initialize variable to any type, it defaults to dynamic type
  // var someVariable; //someVariable is of type dynamic
  // someVariable = 42;
  // someVariable = 'hello'; //valid
  //if we want to allow any type to a variable, use Object?
  //? is used to denote that we can include null value
  // Object? someVariable = null;
  // Object? myVariable = 42;
  // myVariable = 'hello'; //valid
  //we generalised the variable on purpose and we need to check its type before any operation
  //unlike dynamic type where we can do anything with the variable and causes bugs
  // if(myVariable.runtimeType == String){
  //   print('string');
  // }
  // else{
  //   print('integer');
  // }
  //output: string

  /*CHALLENGES*/
  //Challenge 1: Teacher's grading
  // const attendance = (20 * 90) / 100;
  // const homework = (30 * 80) / 100;
  // const exam = (50 * 94) / 100;
  // print((exam + homework + attendance).toInt());  //output: 89

  //Challenge 2: Find the error
  // const name = 'Ray';
  // name += ' Wenderlich';
  //error: Constant variables can't be assigned a value.
  //as we have declared name as constant, we can't modify it with concatenation

  //Challenge 3: What type?
  // const value = 10 / 2;
  // print(value.runtimeType); //output: double

  //Challenge 6: In summary
  // const number = 10;
  // const multiplier = 5;
  // final summary = '$number * $multiplier = ${number * multiplier}';
  // print(summary); //output: '10 * 5 = 50'
}
