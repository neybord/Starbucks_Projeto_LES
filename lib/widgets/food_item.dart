import 'package:flutter/material.dart';
import 'food.dart';

class FoodItem extends StatelessWidget {

  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(food.name),
    );
  }
}
