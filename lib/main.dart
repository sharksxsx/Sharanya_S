import 'package:ecommerce/pages/HomePage.dart';
import 'package:ecommerce/pages/SplashScreen.dart';
import 'package:ecommerce/pages/itemPage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => SplashScreen(),
        "homePage" : (context) => HomePage(),
        "itemPage" : (context) => ItemPage(),
      },
      
    );
  }
}
      