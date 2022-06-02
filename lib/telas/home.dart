import 'package:flutter/material.dart';
import 'package:starbucks/widgets/carousel.dart';
import 'package:starbucks/widgets/food_list.dart';
import 'package:starbucks/widgets/imagemCategoria.dart';
import 'package:starbucks/widgets/restaurant.dart';
import 'package:starbucks/widgets/widget-input.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/food_list_view.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selected = 0; //Valor do Index ao selecionar uma categoria
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 226, 100, 1.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined, // Irei Adicionar o Carousel Aqui
            Icons.search_outlined,
          ),
          pesquisaCorpo(),
          Carousel(),
          FoodList(selected, (index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant,ImagemCategoria.generateRestaurant()),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          )
        ],
      ),
    );
  }

  pesquisaCorpo() {
    TextEditingController pesquisa = TextEditingController();
    return Container(
      margin: EdgeInsets.only(left: 50),
      width: 400,
      child: InputTexto("Pesquisar", "Digite nome da bebida",
          controller: pesquisa),
    );
  }
}
