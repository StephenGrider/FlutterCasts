import 'package:prompter_sg/prompter_sg.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f')
  ];

  final prompter = new Prompter();
  prompter.askBinary('alksjdlaksjdf');
  print(prompter.askBinary('Do you like dart'));
}
