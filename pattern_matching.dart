void main() {
  // Basic Pattern Matching with switch and case
  String fruit = 'apple';

  switch (fruit) {
    case 'apple':
      print('It is an apple.');
      break;
    case 'banana':
      print('It is a banana.');
      break;
    default:
      print('Unknown fruit.');
  }

  // Pattern Matching with Object Types
  void process(dynamic item) {
    if (item is int) {
      print('It is an integer: $item');
    } else if (item is String) {
      print('It is a string: $item');
    } else {
      print('Unknown type');
    }
  }

  process(42);
  process('Hello');
  process(3.14);

  // Pattern Matching with case and Object Types (Dart 2.15+)
  void process2(dynamic item) {
    switch (item) {
      case int i:
        print('It is an integer: $i');
        break;
      case String s:
        print('It is a string: $s');
        break;
      default:
        print('Unknown type');
    }
  }

  process2(42);
  process2('Hello');
  process2(3.14);

  // Pattern Matching with Lists and Maps
  dynamic data = [1, 2, 3];

  switch (data) {
    case List<int> numbers:
      print('List of integers: $numbers');
      break;
    case Map<String, dynamic> info:
      print('Map of info: $info');
      break;
    default:
      print('Unknown data type');
  }
}
