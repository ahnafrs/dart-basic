// Define an interface called 'Shape'
abstract class Shape {
  double calculateArea();
}

// Define a class called 'Circle' that implements 'Shape'
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Define a class called 'Rectangle' that also implements 'Shape'
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // Create objects of 'Circle' and 'Rectangle'
  var circle = Circle(5.0);
  var rectangle = Rectangle(4.0, 6.0);

  // Calculate and print areas
  print('Circle Area: ${circle.calculateArea()}');
  print('Rectangle Area: ${rectangle.calculateArea()}');
}
