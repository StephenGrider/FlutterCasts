import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          Text(image.title),
        ],
      ),
    );
  }
}
