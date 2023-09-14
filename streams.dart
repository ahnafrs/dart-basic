import 'dart:async';

void main() {
  // Create a StreamController to manage the stream
  final StreamController<int> controller = StreamController<int>();

  // Create a Stream from the controller
  final Stream<int> stream = controller.stream;

  // Subscribe to the stream to receive events
  final StreamSubscription<int> subscription = stream.listen(
    (data) {
      print('Received: $data');
    },
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('Stream is closed');
    },
  );

  // Add events to the stream
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

  // Handle errors in the stream
  controller.sink.addError('Something went wrong');

  // Close the stream when done
  controller.sink.close();

  // Cancel the subscription to release resources
  subscription.cancel();
}
