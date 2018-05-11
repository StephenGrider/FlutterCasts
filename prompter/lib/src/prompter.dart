import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    final input = ask('$prompt (y/n)', []);

    return input.contains('y');
  }

  askMultiple(String prompt, List<Option> options) {
    final input = ask(prompt, options);

    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return askMultiple(prompt, options);
    }
  }

  String ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }
}
