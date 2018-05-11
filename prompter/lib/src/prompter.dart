import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  ask(String prompt, List<Option> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();

    return options[int.parse(input)].value;
  }
}
