// Define an extension on the String class
extension StringExtensions on String {
  // Method to capitalize the first letter of a string
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

void main() {
  String text = 'hello, world';

  // Use the extension method to capitalize the first letter
  String capitalizedText = text.capitalizeFirstLetter();

  print('Original Text: $text');
  print('Capitalized Text: $capitalizedText');
}
