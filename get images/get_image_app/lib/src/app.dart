import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget{
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel>images =[];

  void fetchImage() async {
    counter ++;
    var responce = await get('http://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(responce.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return  MaterialApp(
      home: Scaffold(
        body: ImageList(images),

        floatingActionButton: FloatingActionButton(
          child:
          Icon(Icons.add),
          backgroundColor: Colors.purple,

          onPressed: fetchImage,
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('lets see some images'),
        ),
      ),
    );
  }
}