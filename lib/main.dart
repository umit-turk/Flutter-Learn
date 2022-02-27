import 'package:flutter/material.dart';

import 'week3/food_card/food_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FoodCard(),
    );
  }
}
