// Required HTML:
// <input class="input1" />
// <button>Submit</button>

import 'dart:html';

void main() {
  final InputElement input = querySelector('input');
  final ButtonElement button = querySelector('button');

  button.onClick
    .take(4)
    .where((event) => input.value == 'banana')
    .listen(
        (event) => print('You got it!'),
        onDone: () => print('Nice tries'),
      );
}
