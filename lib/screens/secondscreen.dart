import 'package:flutter/material.dart';
import 'package:practice/components/indicators.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "second";
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(child: Image.asset("assets/images/jadepic.png")),
                  Column(
                    children: [
                      Text(
                        "Hello, Jade",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Ready To Workout",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Badge(child: Icon(Icons.notifications)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 82,
                width: 400,
                color: Colors.blueGrey.shade50,
                child: Expanded(
                  child: Row(children: [
                  Indicators(
                    "assets/images/heartrate.png",
                    "Heart Rate",
                    "81 BPM"
                  ),
                  Divider(
                    color: Colors.blueGrey.shade50,
                  ),
                    Indicators(
                    "assets/images/heartrate.png",
                    "Heart Rate",
                    "81 BPM"
                  ),
                    Indicators(
                  "assets/images/heartrate.png",
                  "Heart Rate",
                  "81 BPM"
                ),
                  ]),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
