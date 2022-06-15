import 'package:flutter/material.dart';
import 'package:starbucks/widgets/CustomAppBar.dart';
import 'package:starbucks/widgets/detail_img.dart';
import 'package:starbucks/widgets/food_detail.dart';
import 'package:starbucks/widgets/imagemCategoria.dart';

import 'food.dart';


class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 226, 100, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(Icons.arrow_back_ios_outlined,
                Icons.search_outlined,
              leftCallBack:  () => Navigator.of(context).pop(),
            ),
            DetailImg(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: Color.fromRGBO(27, 226, 100, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(food.qtde.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
