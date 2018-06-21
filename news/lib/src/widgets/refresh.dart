import 'package:flutter/material.dart';

class Refresh extends StatelessWidget {
  final Widget child;

  Refresh({this.child});

  Widget build(context) {
    return RefreshIndicator(
      child: child,
      onRefresh: () {},
    );
  }
}
