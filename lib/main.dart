import 'package:flutter/material.dart';
import 'package:flutterlearn/Week1/welcome/welcome_view.dart';
import 'package:flutterlearn/week2/post_json_place_holder/post_json_place_holder.dart';
import 'package:flutterlearn/week2/statefull/home_statefull_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PostJsonPlaceHolder(),
    );
  }
}
