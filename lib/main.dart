import 'package:flutter/material.dart';
import 'package:flutterlearn/Week1/welcome/welcome_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: WelcomeView(),
    );
  }
}
