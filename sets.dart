void main() {
  // Create a set of unique names
  Set<String> names = {'Alice', 'Bob', 'Charlie', 'David', 'Eve'};

  // Print the original set of names
  print('Original Set of Names: $names');

  // Adding a new name to the set
  names.add('Frank');

  // Attempting to add a duplicate name (it won't be added)
  names.add('Alice');

  // Print the updated set of names
  print('Updated Set of Names: $names');

  // Removing a name from the set
  names.remove('David');

  // Check if a name exists in the set
  bool containsCharlie = names.contains('Charlie'); // true
  bool containsGrace = names.contains('Grace'); // false

  // Print the results
  print('Does the set contain Charlie? $containsCharlie');
  print('Does the set contain Grace? $containsGrace');

  // Iterating over the set of names
  print('Iterating over the set:');
  for (var name in names) {
    print(name);
  }

  // Finding the number of names in the set
  var numberOfNames = names.length;
  print('Number of Names in the Set: $numberOfNames');

  // Checking if the set is empty
  bool isEmpty = names.isEmpty;
  print('Is the set empty? $isEmpty');
}
