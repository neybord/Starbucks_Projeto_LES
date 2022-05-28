import 'package:flutter/material.dart';
import 'package:starbucks/telas/Principal.dart';

import '../widgets/CustomAppBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selected =0; //Valor do Index ao selecionar uma categoria

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined, // Irei Adicionar o Carousel Aqui
            Icons.search_outlined,
          ),
        ],
      ),
    );
  }
}