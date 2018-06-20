import 'package:flutter/material.dart';
import '../blocs/stories_provider.dart';

class NewsList extends StatelessWidget {
  Widget build(context) {
    final bloc = StoriesProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: Text('Show a list'),
    );
  }
}
