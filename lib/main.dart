import 'package:flutter/material.dart';
import 'package:practice/screens/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyHome.routName,
      home: MyHome(),
    );
  }
}