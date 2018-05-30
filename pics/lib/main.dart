// Import a library to help us get content
// on the screen of the mobile device
import 'package:flutter/material.dart';

// Define a main function
void main() {
  // Create a widget that will show some text on the screen
  var app = MaterialApp(
    home: Text('Hi there!'),
  );

  // Show that widget on the screen of the device
  runApp(app);
}
