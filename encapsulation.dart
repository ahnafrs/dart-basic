class Person {
  // Private data members
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter method for the 'name' property
  String get name => _name;

  // Setter method for the 'name' property
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  // Getter method for the 'age' property
  int get age => _age;

  // Setter method for the 'age' property
  set age(int value) {
    if (value >= 0) {
      _age = value;
    }
  }

  // Public method
  void introduce() {
    print('Hi, I am $_name and I am $_age years old.');
  }
}

void main() {
  // Create a Person object
  var person = Person('Alice', 30);

  // Access and modify private data using getters and setters
  person.name = 'Bob';
  person.age = 25;

  // Call a public method
  person.introduce();
}
