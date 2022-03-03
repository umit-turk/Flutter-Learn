import 'package:flutter/material.dart';
import 'package:flutterlearn/week3/core/base/base_stateful.dart';
import 'package:flutterlearn/week3/food_card/model/food_model.dart';
import './food_card.dart';

abstract class FoodCardViewModel extends BaseStatefull<FoodCard> {
  late final List<foodModel> foodItemList;

  @override
  void initState() {
    super.initState();
    foodItemList = [
      foodModel('Broccoli', imageConstants.bracoli, '10'),
      foodModel('Broccoli', imageConstants.bracoli, '10'),
      foodModel('Kale', imageConstants.kale, '20'),
      foodModel('Kale', imageConstants.kale, '20'),
    ];
  }
}
