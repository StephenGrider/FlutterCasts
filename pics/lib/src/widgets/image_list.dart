import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          margin: EdgeInsets.all(20.0),
          child: Image.network(images[index].url),
        );
      },
    );
  }
}
