// Define an abstract class called 'Shape'
abstract class Shape {
  // Declare an abstract method 'calculateArea'
  double calculateArea();

  // Regular (non-abstract) method
  void printDescription() {
    print('This is a shape.');
  }
}

// Define a class called 'Circle' that extends 'Shape'
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  // Provide an implementation for the abstract 'calculateArea' method
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Define a class called 'Rectangle' that also extends 'Shape'
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  // Provide an implementation for the abstract 'calculateArea' method
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // Create objects of 'Circle' and 'Rectangle'
  var circle = Circle(5.0);
  var rectangle = Rectangle(4.0, 6.0);

  // Call the 'calculateArea' method and 'printDescription' method
  print('Circle Area: ${circle.calculateArea()}');
  circle.printDescription();
  print('Rectangle Area: ${rectangle.calculateArea()}');
  rectangle.printDescription();
}
