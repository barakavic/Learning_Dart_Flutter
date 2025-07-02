class Animal{
  String name = "Animal";
  Animal(){
    print("I am an animal class Constructor");

  }

  Animal.namedConstructor(){
    print('This is a parent animal Constructor');

  }
  void showName(){
    print (this.name);

  }

  void eat(){
    print('Animals eat everything depending on what type it is');

  }
}

mixin class Dog{
  void canRun()
  {
    print("I can run");
  }
}

class Cat extends Animal with Dog{
  Cat(): super(){
    print('I am a child class overriding super Animal class');

  }

  Cat.namedCatConstructor(): super.namedConstructor(){
    print("The child cat named constructor overrides the arent animal named constructor");

  }
  @override

  void showName(){
    print("Hi from cat");

  }

  @override
  void showname()
  {
    print('Hi from cat');

  }

  @override
  void eat() {
    // TODO: implement eat
    super.eat();
    print("Cat doesnt eat vegetables...");
  }

}