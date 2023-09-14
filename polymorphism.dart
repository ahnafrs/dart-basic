// Define a superclass called 'Shape'
class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

// Define two subclasses: 'Circle' and 'Rectangle'
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing a rectangle');
  }
}

void main() {
  // Create instances of 'Circle' and 'Rectangle'
  var circle = Circle();
  var rectangle = Rectangle();

  // Create a list of shapes
  List<Shape> shapes = [circle, rectangle];

  // Iterate through the list and call the 'draw' method on each shape
  for (var shape in shapes) {
    shape.draw();
  }
}
