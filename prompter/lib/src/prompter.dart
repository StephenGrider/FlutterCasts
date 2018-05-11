import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  askBinary(String prompt) {
    _terminal.printPrompt('$prompt (y/n)');
  }

  askMultiple(String prompt, List<Option> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();

    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return askMultiple(prompt, options);
    }
  }
}
