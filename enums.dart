// Define an enum for days of the week
enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

void main() {
  // Using enum values
  Day today = Day.tuesday;
  print('Today is $today');

  // Comparing enum values
  if (today == Day.monday) {
    print('It\'s a Monday.');
  } else {
    print('It\'s not Monday.');
  }

  // Enum values can be used in switch statements
  switch (today) {
    case Day.monday:
    case Day.tuesday:
    case Day.wednesday:
    case Day.thursday:
    case Day.friday:
      print('It\'s a weekday.');
      break;
    case Day.saturday:
    case Day.sunday:
      print('It\'s a weekend.');
      break;
  }

  // Enum values are represented as integers (0-based index)
  print('Index of $today is ${today.index}');

  // Enum values can be used to index an array or list
  List<String> weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  print('Today is ${weekDays[today.index]}');
}
