// Markup:
// <input />
// <div style="color: red;"></div>

import 'dart:html';
import 'dart:async';

void main() {
  final div = querySelector('div');
  
  final validator = StreamTransformer.fromHandlers(
    handleData: (event, sink) {
      if (event.contains('@')) {
        sink.add(event);
      } else {
        sink.addError('Enter a valid email');
      }
    },
  );
  
  querySelector('input')
    .onInput
    .map((dynamic event) => event.target.value)
    .transform(validator)
  	.listen(
      (value) => div.innerHtml = '',
      onError: (err) => div.innerHtml = err
    );
}

