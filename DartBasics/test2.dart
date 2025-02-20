class Human{
  String name;
  int? age;
  Human({required this.name, this.age});
  void show(){
    print("Name: $name, Age: $age");
  }
}

Human h1 = Human(name: 'John');