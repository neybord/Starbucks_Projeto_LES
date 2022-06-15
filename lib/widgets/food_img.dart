import 'package:flutter/material.dart';
import 'package:starbucks/widgets/food.dart';


class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('Assets/Imagens/1.PNG'),
          Text('Nome do Item')
        ],
      ),
    );
  }
}
