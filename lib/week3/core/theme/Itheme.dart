import 'package:flutter/material.dart';
import 'package:flutterlearn/week3/core/color/color_theme.dart';

abstract class ITheme {
  ThemeData get data;
  final colors = ColorTheme();
}
