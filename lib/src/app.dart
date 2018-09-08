import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import '../src/providers/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: "Udemy Proect",
        theme: ThemeData(primarySwatch: Colors.green),
        home: LoginScreen(),
      ),
    );
  }
}
