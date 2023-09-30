

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {

  static const routeName = "thirdscreen";
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
    );
  }
}