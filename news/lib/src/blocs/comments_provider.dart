import 'package:flutter/material.dart';
import 'comments_bloc.dart';
export 'comments_bloc.dart';

class CommentsProvider extends InheritedWidget {
  final CommentsBloc bloc;

  CommentsProvider({Key key, Widget child})
      : bloc = CommentsBloc(),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static CommentsBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CommentsProvider>())
        .bloc;
  }
}
