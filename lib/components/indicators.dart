import 'package:flutter/material.dart';


class Indicators extends StatelessWidget {
  
  String assetName;
  String assetText1;
  String assetText2;

  Indicators(this.assetName,this.assetText1,this.assetText2);

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(assetName),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(assetText1),
                          ],
                        ),
                        Text(assetText2),
                      ],
                    ),
                  );
  }
}