import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = BlocLoginScreen();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static BlocLoginScreen of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
