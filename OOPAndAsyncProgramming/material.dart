//A B S T R A C T I O N and E N C A P S U L A T I O N
abstract class Shape{
  double getArea();
  double get circumference;
}

class Circle implements Shape{
  double _radius;
  Circle(this._radius);
  int get intRadius {
    return _radius.toInt();
  }
  void set radius(double radius){
    _radius = radius;
  }
  @override
  double getArea(){
    return 3.14159 * _radius * _radius;
  }
  @override
  double get circumference{
    return 2 * 3.14159 * _radius;
  }
}

class Square implements Shape{
  double _side;
  Square(this._side);
  double get side{
    return _side;
  }
  @override
  double getArea(){
    return _side * _side;
  }
  @override
  double get circumference{
    return 4 * _side;
  }
}

//I N H E R I T A N C E and P O L Y M O R P H I S M
class Animal{
  String name;
  Animal(this.name);
  void makeSound(){
    print('Generic animal sound');
  }
}

class Cat extends Animal{
  String breed;
  Cat(String name, this.breed) : super(name);

  @override
  void makeSound(){
    print('Meow! Meow!');
  }
}

class Dog extends Animal{
  String breed;
  Dog(String name, this.breed) : super(name);
  
  @override
  void makeSound(){
    print('Woof! Woof!');
  }
}
//A S Y N C   P R O G R A M M I N G
class Data{
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Retrieved data from the server';
  }
}


void main(){
  Circle circle = Circle(5);
  print('Circle Area: ${circle.getArea()}, and radius: ${circle.intRadius}');

  //Encapsulation (list of shapes contains different shapes)
  List<Shape> shapes = [Circle(5), Square(4)];

  for (var shape in shapes){
    print('Area: ${shape.getArea()}');
    print('Circumference: ${shape.circumference}');
  }

  Data data = Data();
  data.fetchData().then((value) => print(value));
  print('Fetching data...');
}

/*
Task: Simple Shape Calculator (with Async Area Calculation)

Goal: Reinforce abstraction, encapsulation, inheritance, polymorphism, and introduce a simple async operation.

Instructions:
Create a Rectangle class: Similar to Square, but with width and height. It should also implement the Shape abstract class.

Create a ShapeCalculator class:
  This class should have a method calculateAreaAsync(Shape shape).
  This method should:
  Simulate a delay (e.g., 1 second) using Future.delayed. Explain that this simulates a complex calculation or external data retrieval.
  After the delay, call the shape.getArea() method and return the result as a Future<double>.

Main Function:
  Create instances of Circle, Square, and Rectangle.
  Create an instance of ShapeCalculator.
  Call calculateAreaAsync for each shape.
  Use await to get the results and print them to the console.
*/