void main() {
  // Creating a map of names and their corresponding ages
  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };

  // Printing the original map
  print('Original Map of Ages: $ages');

  // Accessing values by key
  int? aliceAge = ages['Alice'];
  int? daveAge = ages['Dave']; // This will return null

  // Printing the values
  print('Alice\'s Age: $aliceAge');
  print('Dave\'s Age: $daveAge');

  // Adding a new entry to the map
  ages['Eve'] = 28;

  // Updating the value for an existing key
  ages['Alice'] = 31;

  // Removing an entry from the map
  ages.remove('Bob');

  // Checking if a key exists in the map
  bool hasCharlie = ages.containsKey('Charlie'); // true
  bool hasFrank = ages.containsKey('Frank'); // false

  // Printing the results
  print('Does the map contain Charlie? $hasCharlie');
  print('Does the map contain Frank? $hasFrank');

  // Iterating over the map
  print('Iterating over the map:');
  ages.forEach((name, age) {
    print('$name is $age years old.');
  });

  // Finding the number of entries in the map
  var numberOfEntries = ages.length;
  print('Number of Entries in the Map: $numberOfEntries');

  // Checking if the map is empty
  bool isEmpty = ages.isEmpty;
  print('Is the map empty? $isEmpty');
}
