

import 'package:flutter/material.dart';

class Excercise extends StatelessWidget {
  

  String assetName;
  String textName;
  Color assetColor;

  Excercise(this.assetName,this.textName,this.assetColor);

  @override
  Widget build(BuildContext context) {
    return  Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: assetColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(assetName),
                      Text(textName),
                    ],
                  ),
                  width: 151,
                  height: 56,
                );
  }
}