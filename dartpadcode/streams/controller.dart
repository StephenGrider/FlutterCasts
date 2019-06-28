import 'dart:async';

void main() {
  final controller = new StreamController<String>();

  controller.stream.listen((val) {
    print(val);
  });

  controller.sink.add('Hi there!');
}
