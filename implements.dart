// Define an interface called Animal
class Animal {
  void makeSound() {
    // TODO: implement makeSound
  }
}

// Define a class called Dog that implements the Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Define a class called Cat that also implements the Animal interface
class Cat implements Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  // Create instances of Dog and Cat
  var dog = Dog();
  var cat = Cat();

  // Call the makeSound method on both objects
  dog.makeSound(); // Output: Dog barks
  cat.makeSound(); // Output: Cat meows
}
