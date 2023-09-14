// Define a superclass called Animal
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('$name makes a sound');
  }
}

// Define a subclass called Dog that inherits from Animal
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  // Override the makeSound method from the superclass
  @override
  void makeSound() {
    print('$name, a $breed, barks');
  }

  void fetch() {
    print('$name fetches a ball');
  }
}

void main() {
  // Create an instance of the Dog class
  Dog myDog = Dog('Buddy', 3, 'Golden Retriever');

  // Access properties and methods of the Dog class
  print('Name: ${myDog.name}');
  print('Age: ${myDog.age}');
  print('Breed: ${myDog.breed}');

  // Call the overridden makeSound method
  myDog.makeSound();

  // Call the subclass-specific method
  myDog.fetch();
}
