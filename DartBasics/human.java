class Human{
    String name;
    int age;
    Human(String name, int age){
        this.name = name;
        this.age = age;
    }
    void sayHello(){
        System.out.println("Hello, my name is " + name);
    }
    void sayAge(){
        System.out.println("I am " + age + " years old");
    }
    public static void main(String[] args){
        Human human1 = new Human("John", 20);
        Human human2 = new Human("Jane", 21);
        human1.sayHello();
        human1.sayAge();
        human2.sayHello();
        human2.sayAge();
    }
}