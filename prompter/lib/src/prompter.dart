import 'option.dart';
import 'terminal.dart';

class Prompter {
  ask(String prompt, List<Option> options) {
    var terminal = new Terminal();

    terminal.printPrompt(prompt);
    terminal.printOptions(options);
  }
}
