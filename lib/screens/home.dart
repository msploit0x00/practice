import 'package:flutter/material.dart';
import 'package:practice/components/emojis.dart';
import 'package:practice/components/mytheme.dart';

class MyHome extends StatelessWidget {
  static const String routName = "home";

  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        leading: Image.asset("assets/images/logo.png"),
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
              height: 16
              ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Features",
                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                
                ),
                Text(
                  "See More > ",
                  style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                )
              ],
            ),

            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
