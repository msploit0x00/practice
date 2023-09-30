import 'package:flutter/material.dart';
import 'package:practice/screens/home.dart';
import 'package:practice/screens/secondscreen.dart';
import 'package:practice/screens/thirdscreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ,
      debugShowCheckedModeBanner: false,
      initialRoute: MyHome.routName,
      home: MyHome(),

      routes: {
        SecondScreen.routeName : (context) => SecondScreen(),
        ThirdScreen.routeName : (context) => ThirdScreen(),
      },
    );
  }
}