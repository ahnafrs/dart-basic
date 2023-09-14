// Define an abstract class called 'Animal'
abstract class Animal {
  // Abstract method 'makeSound' without an implementation
  void makeSound();

  // Regular method
  void sleep() {
    print('Animal is sleeping');
  }
}

// Define two subclasses: 'Dog' and 'Cat'
class Dog extends Animal {
  // Provide an implementation for the 'makeSound' method

  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  // Provide an implementation for the 'makeSound' method

  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  // Create instances of 'Dog' and 'Cat'
  var dog = Dog();
  var cat = Cat();

  // Call 'makeSound' and 'sleep' methods on both objects
  dog.makeSound();
  dog.sleep();

  cat.makeSound();
  cat.sleep();
}
