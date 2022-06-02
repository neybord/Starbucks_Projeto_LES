import 'package:flutter/material.dart';
import 'package:starbucks/widgets/restaurant.dart';
import 'package:starbucks/widgets/imagemCategoria.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  final ImagemCategoria imagemCategoria;

  FoodList(this.selected, this.callback, this.restaurant, this.imagemCategoria);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    final imgCategoria = imagemCategoria.menu.keys.toList();
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 30),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () => callback(index),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          /*borderRadius: BorderRadius.circular(50),
                        color: selected == index
                            ? Color.fromRGBO(0, 128, 0, 1)
                            : Color.fromRGBO(34, 57, 29, 1),*/
                          image: DecorationImage(
                              image: NetworkImage(imgCategoria[index]),
                              fit: BoxFit.cover),
                          /*boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0.1,
                              offset: Offset(2, 4)),
                        ],*/
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(153, 141, 141, 0.6)
                          ),
                          child: Text(
                            category[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: category.length),
          ),
        ),

      ],
    );
  }
}
