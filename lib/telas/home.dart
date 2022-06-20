import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/telas/login.dart';
import 'package:starbucks/widgets/carousel.dart';
import 'package:starbucks/widgets/food_list.dart';
import 'package:starbucks/widgets/imagemCategoria.dart';
import 'package:starbucks/widgets/restaurant.dart';
import 'package:starbucks/widgets/user.dart';
import 'package:starbucks/widgets/widget-input.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/food_list_view.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
    .collection("user")
    .doc(user!.uid)
    .get()
    .then((value){
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {

      });
    });
  }

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
            Icons.logout_outlined,
            Icons.search_outlined,
            leftCallBack:  () => logout(context),
          ),
          //pesquisaCorpo(),
          Carousel(),
          FoodList(selected, (int index) {
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
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 35,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: Colors.green,
                    padding: 2,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {},
        backgroundColor: Colors.white,
        elevation: 2,
        child: Icon(Icons.shopping_cart_outlined,
        color: Colors.black,
        size: 30),
      ),
    );
  }

  Future<void> logout(BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }


  /*pesquisaCorpo() {
    TextEditingController pesquisa = TextEditingController();
    return Container(
      margin: EdgeInsets.only(left: 50),
      width: 400,
      child: InputTexto("Pesquisar", "Digite nome da bebida",
          controller: pesquisa),
    );
  }*/
}
