class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  final person1 = Person('Alice', 30);
  final person2 = Person('Bob', 25);
  final person3 = Person('Alice', 30);

  print(person1 == person2); // false
  print(person1 == person3); // true

  print(person1.hashCode);
  print(person3.hashCode);
}
