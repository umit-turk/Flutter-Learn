import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutterlearn/week3/core/theme/Itheme.dart';

class LightTheme extends ITheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    if (_instance != null) return _instance!;
    _instance = LightTheme._init();
    return _instance!;
  }

  LightTheme._init();

  final _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
      appBarTheme: _lightTheme.appBarTheme.copyWith(
        backgroundColor: Colors.white,
      ),
      accentColor: Colors.green,
      textTheme: _lightTheme.textTheme
          .apply(bodyColor: colors.lynch), //bodydeki bütün colorları ezdik
      colorScheme: _lightTheme.colorScheme
          .copyWith(primary: Colors.white, onPrimary: colors.lynch));
}
