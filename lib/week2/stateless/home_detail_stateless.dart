import 'package:flutter/material.dart';
import 'package:flutterlearn/week2/core/component/scroll/scroll_bar_single.dart';
import 'package:flutterlearn/week2/statefull/model/user.dart';

class HomeDetailStateLess extends StatelessWidget {
  final User model;

  const HomeDetailStateLess({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: ScrollBarSingle(
          child: Text(model.storyText),
        ));
  }
}
