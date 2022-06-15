import 'package:flutter/material.dart';
import 'food.dart';

class FoodItem extends StatelessWidget {

  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255 , 255, 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(food.imgUrl, fit: BoxFit.fitHeight,),
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(food.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                        size: 15,)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(food.desc, style: TextStyle(
                      color: food.hightLight ? Color.fromRGBO(0, 112, 74, 1) : Colors.black.withOpacity(0.8),
                      height: 1.5,
                    ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('\$',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('${food.price}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}
