import 'package:prompter_sg/prompter_sg.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f')
  ];

  final prompter = new Prompter();

  String colorCode = prompter.askMultiple('Select a color', options);

  bool answer = prompter.askBinary('Do you like this lib?');

  print(colorCode);
  print(answer);
}
