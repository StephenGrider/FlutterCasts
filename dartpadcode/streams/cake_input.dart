import 'dart:async';
import 'dart:html';

class Cake {}

void main() {
  final input = querySelector('input');

  final baker =
      new StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
    if (cakeType == 'chocolate') {
      sink.add(new Cake());
    } else {
      sink.addError('I cant bake that type!!!');
    }
  });

  input.onInput.map((order) => order.type).transform(baker).listen(
      (cake) => print('Heres your cake $cake'),
      onError: (err) => print(err));
}
