// Define a mixin called 'LoggerMixin'
mixin LoggerMixin {
  void log(String message) {
    print('Log: $message');
  }
}

// Define a class 'Person' that uses the 'LoggerMixin'
class Person with LoggerMixin {
  String name;

  Person(this.name);

  void sayHello() {
    log('Hello, my name is $name.');
  }
}

void main() {
  // Create a 'Person' object
  var person = Person('Alice');

  // Call methods from the mixin and the class
  person.log('This is a log message.');
  person.sayHello();
}
