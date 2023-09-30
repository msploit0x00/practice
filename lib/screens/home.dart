import 'package:flutter/material.dart';
import 'package:practice/components/emojis.dart';
import 'package:practice/components/excercise.dart';
import 'package:practice/components/mytheme.dart';
import 'package:practice/screens/secondscreen.dart';
import 'package:practice/screens/thirdscreen.dart';

class MyHome extends StatefulWidget {
  static const String routName = "home";

  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        leading: InkWell(child: Image.asset("assets/images/logo.png"), onTap: () {
          Navigator.pushNamed(context, SecondScreen.routeName);
        },),
        title: Text(
          "Moody",
          style: TextStyle(color: Colors.black),
        ),
        // actions: [
        //   Badge(
        //     // child: Icon(Icons.notifications),
        //   ),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Text(
              "Hello, Sara Rose",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "How are you feeling Today?",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Emojis("assets/images/emoji1.png", "Love"),
                Emojis("assets/images/emoji2.png", "Cool"),
                Emojis("assets/images/emoji3.png", "Happy"),
                Emojis("assets/images/emoji4.png", "Sad"),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Features",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More > ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/vibes.png"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Excercise",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More > ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Excercise("assets/images/relax.png", "Relaxation",
                    Colors.purple.shade50),
                Excercise("assets/images/med.png", "Medeitaion",
                    Colors.purple.shade100),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Excercise("assets/images/beathing.png", "Beathing",
                    Colors.orange.shade50),
                Excercise(
                    "assets/images/yoga.png", "Yoga", Colors.blue.shade100),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey[400],
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ".",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "."),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "."),
        ],
      ),
    );
  }

  List<Widget> tabs = [
    SecondScreen(),
    ThirdScreen(),
  ];
}
