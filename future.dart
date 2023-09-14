void main() {
  // Create a Future that simulates a network request
  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () {
      return 'Data from the server';
    });
  }

  print('Fetching data...');

  // Use the then() method to handle the result when it's available
  fetchData().then((data) {
    print('Received data: $data');
  }).catchError((error) {
    print('Error: $error');
  }).whenComplete(() {
    print('Request completed.');
  });

  // Continue with other work while waiting for the Future to complete
  print('Doing something else...');
}
