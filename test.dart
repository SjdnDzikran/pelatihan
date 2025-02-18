void main(){
  showOutput(age: 30, name: 'John');
}

// P R O G R A M M I N G   F U N D A M E N T A L S 

// Variables: store different types of data
String name = 'John';
int semester = 4;
double gpa = 3.5;
bool isBeginner = true;

/*
  basic math operations
  + addition
  - subtraction
  * multiplication
  / division
  % modulus

  Comparison operators
  == equal
  != not equal
  > greater than
  < less than
  >= greater than or equal to
  <= less than or equal to

  Logical operators
  && and
  || or
  ! not
*/

/*
  Control Flow: branching and looping
  if(condition) {
    // code block
  } else if(condition) {
    // code block
  } else {
    // code block
  }

  ternary operator
  condition ? expression1 : expression2

  switch(expression) {
    case value1:
      // code block
      break;
    case value2:
      // code block
      break;
    default:
      // code block
  }

  Looping
  for(initialization; condition; increment/decrement) {
    // code block
  }

  while(condition) {
    // code block
  }

  do {
    // code block
  } while(condition);

  for(var element in list) {
    // code block
  }

  Functions
  positional parameters
  returnType functionName(parameter1, parameter2) {
    // code block
    return value;
  }

  named parameters
  returnType functionName({parameter1, parameter2}) {
    // code block
    return value;
  }

  returnType functionName(parameters) {
    // code block
    return value;
  }

  

*/

 void showOutput({String? name, int? age}) {
    print("my name is $name and my age is $age");
  }

  // Classes and Objects
  class Person {
  String name = '';
  int age = 0;

  Person(this.name, this.age);

  void showOutput() {
    print(name);
    print(age);
  }
  }
/*
  Collections: List, Set, Map
  List: ordered collection of elements
  List<int> numbers = [1, 2, 3, 4, 5];
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  Set: unordered collection of unique elements
  Set<int> numbers = {1, 2, 3, 4, 5};
  Set<String> fruits = {'Apple', 'Banana', 'Cherry'};

  Map: collection of key-value pairs
  Map<String, String> fruits = {
    'a': 'Apple',
    'b': 'Banana',
    'c': 'Cherry'
  };
*/

/*
  Dart Specific Features
  null-aware operator (??)
  String? maybeNull;
  String result = maybeNull ?? 'Default Value';

  Lambda / Arrow Function
  List<int> numbers = [1, 2, 3, 4];
  numbers.forEach((number) => print(number));
*/
