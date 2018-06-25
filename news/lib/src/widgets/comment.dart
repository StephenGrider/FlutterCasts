import 'dart:async';
import 'package:flutter/material.dart';
import '../models/item_model.dart';

class Comment extends StatelessWidget {
  final int itemId;
  final Map<int, Future<ItemModel>> itemMap;

  Comment({this.itemId, this.itemMap});

  Widget build(context) {
    return FutureBuilder(
      future: itemMap[itemId],
      builder: (context, AsyncSnapshot<ItemModel> snapshot) {
        if (!snapshot.hasData) {
          return Text('Still loading comment');
        }

        final item = snapshot.data;

        final children = <Widget>[
          ListTile(
            title: Text(item.text),
            subtitle: Text(item.by),
          ),
          Divider(),
        ];
        item.kids.forEach((kidId) {
          children.add(
            Comment(itemId: kidId, itemMap: itemMap),
          );
        });

        return Column(
          children: children,
        );
      },
    );
  }
}
