import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hi there!');
        },
      ),
      appBar: AppBar(
        title: Text('Lets see some images!'),
      ),
    ),
  );

  runApp(app);
}
