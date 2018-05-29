import 'dart:io';
import 'package:prompter_sg/prompter_sg.dart';

void main() {
  final prompter = new Prompter();

  final choice = prompter.askBinary('Are you here to convert an image?');
  if (!choice) {
    exit(0);
  }

  final format = prompter.askMultiple('Select format:', buildFormatOptions());
  // prompter.askMultiple('Select an image to convert:', buildFileOptions());
  buildFileOptions();
}

List<Option> buildFormatOptions() {
  return [
    new Option('Convert to jpeg', 'jpeg'),
    new Option('Convert to png', 'png')
  ];
}

List<Option> buildFileOptions() {
  // Get a reference to the current working directory
  Directory.current.listSync().where((entity) {
    return FileSystemEntity.isFileSync(entity.path);
  });

  // Take all the images and create an option object out of each
}
