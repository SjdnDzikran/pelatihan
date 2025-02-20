// Data Types and Variables
void dataTypesAndVariables() {
  // data types
  int integerVar = 10;
  double doubleVar = 3.14;
  String stringVar = "Hello Dart";
  bool boolVar = true;

  // variables: using var and final
  var inferredVar = 20;
  final finalVar = "Immutable";

  print('integerVar: $integerVar, doubleVar: $doubleVar, stringVar: $stringVar, boolVar: $boolVar');
  print('inferredVar: $inferredVar, finalVar: $finalVar');
}

// Branching
void branching() {
  // if-else
  int number = 5;
  if (number > 0) {
    print('Number is positive');
  } else if (number < 0) {
    print('Number is negative');
  } else {
    print('Number is zero');
  }

  // switch-case
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    default:
      print('Grade not recognized');
  }
}

// Looping
void looping() {
  // for loop
  for (int i = 0; i < 3; i++) {
    print('For loop iteration: $i');
  }

  // while loop
  int count = 0;
  while (count < 3) {
    print('While loop count: $count');
    count++;
  }

  // do-while loop
  int doCount = 0;
  do {
    print('Do-while loop count: $doCount');
    doCount++;
  } while (doCount < 3);

  // for-in loop
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (String fruit in fruits) {
    print('Fruit: $fruit');
  }
}

// Functions
int sum(int a, int b) {
  return a + b;
}

void functions() {
  int result = sum(3, 4);
  print('Sum of 3 and 4 is: $result');
}

// Dart Specific Feature: null-aware operator (??)
void dartSpecificFeatures() {
  String? maybeNull;
  String result = maybeNull ?? 'Default Value';
  print('Result using null-aware operator: $result');
}

// Lambda / Arrow Function
void lambdaExample() {
  List<int> numbers = [1, 2, 3, 4];
  // using arrow function in map
  List<int> squared = numbers.map((n) => n * n).toList();
  print('Squared numbers: $squared');
}

// Enums with enhanced features
enum Weather {
  sunny(28),
  rainy(20),
  cloudy(24);

  final int temperature;
  const Weather(this.temperature);
}

// Mixin example
mixin Logger {
  void log(String message) => print('LOG: $message');
}

// Class using mixin
class Service with Logger {
  void doSomething() {
    log('Operation performed');
  }
}

// Extension method
extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${this.substring(1)}';
  }
}

// Class with getter and setter
class Temperature {
  double _celsius = 0;
  
  // Getter
  double get fahrenheit => (_celsius * 9/5) + 32;
  
  // Setter
  set fahrenheit(double value) {
    _celsius = (value - 32) * 5/9;
  }
}

void additionalFeatures() {
  // Anonymous function
  var numbers = [1, 2, 3];
  numbers.forEach((number) {
    print('Number is: $number');
  });

  // Ternary operator
  bool isRaining = true;
  String weather = isRaining ? 'Bring an umbrella' : 'Sunny day!';
  
  // Cascade notation
  var service = Service()
    ..log('First operation')
    ..doSomething();

  // Collection if and for
  var addExtra = true;
  var items = [
    'Apple',
    'Banana',
    if (addExtra) 'Orange',
    for (var i in ['Cherry', 'Date']) '$i fruit'
  ];

  // Spread operator
  var list1 = [1, 2];
  var list2 = [0, ...list1, 3];
  
  // Pattern matching (Dart 3.0)
  var (x, y) = (1, 2);
  
  // Enhanced enum usage
  Weather.values.forEach((weather) {
    print('${weather.name}: ${weather.temperature}°C');
  });

  // Extension method usage
  String name = 'dart';
  print(name.capitalize());

  // Getter/Setter usage
  var temp = Temperature();
  temp.fahrenheit = 98.6;
  print('Celsius: ${temp._celsius}');
}

void main() {
  dataTypesAndVariables();
  branching();
  looping();
  functions();
  dartSpecificFeatures();
  lambdaExample();
  additionalFeatures();
}