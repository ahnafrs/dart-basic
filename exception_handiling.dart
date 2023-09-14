void main() {
  try {
    // Code that might throw an exception
    int result = 10 ~/ 0; // Division by zero
    print('Result: $result'); // This line won't be executed
  } on IntegerDivisionByZeroException {
    // Catch a specific exception (division by zero)
    print('Caught an IntegerDivisionByZeroException');
  } catch (e) {
    // Catch any other exception
    print('Caught an exception: $e');
  } finally {
    // Code that always runs, whether there's an exception or not
    print('Finally block executed');
  }

  // Continue with the rest of the program
  print('Program continues...');
}
