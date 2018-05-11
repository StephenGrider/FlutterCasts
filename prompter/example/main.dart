import 'package:prompter_sg/src/option.dart';
import 'package:prompter_sg/src/prompter.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f')
  ];

  final prompter = new Prompter();
  print(prompter.askBinary('Do you like dart'));
}
