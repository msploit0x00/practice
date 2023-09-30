
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  static const String routeName = "second";
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Hello"),
      ),
    );
  }
}