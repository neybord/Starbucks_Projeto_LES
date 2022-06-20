import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbucks/telas/home.dart';
import 'package:starbucks/telas/login.dart';
import 'package:starbucks/widgets/carousel.dart';
import 'package:starbucks/widgets/food_img.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBKhO31I9SOOAea-I9p6VMTDiVsbPdDxn0",
          appId: "starbucks-projeto-les",
          messagingSenderId: "1083630152509",
          projectId: "emailpasswordauth-2d499"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starbucks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(), //Carousel(),//Home(),
    );
  }
}
