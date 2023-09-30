import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  String assetName;
  String iconText;

  Emojis(this.assetName, this.iconText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Image.asset(assetName)),
        ),
        Text(iconText),
      ],
    );
  }
}
