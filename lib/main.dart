import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbucks/telas/home.dart';
import 'package:starbucks/widgets/carousel.dart';
import 'package:starbucks/widgets/food_img.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starbucks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),//Carousel(),//Home(),
    );
  }
}

