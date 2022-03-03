import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterlearn/week3/core/images/images_constant.dart';
import 'package:flutterlearn/week3/core/localize/application_string.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {
  ApplicationStrings applicationStrings = ApplicationStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorSchema => Theme.of(context).colorScheme;

//cagirildigi zaman hesaplanacak ve kulanilabilecek
  ImageConstants imageConstants = ImageConstants.instance;
}
