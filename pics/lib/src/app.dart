import 'package:flutter/material.dart';

// THIS IS THE WRONG WAY OF DOING THINGS!!!!

class App extends StatelessWidget {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            counter += 1;
          },
        ),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      ),
    );
  }
}
