import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  static const String routName = "home";

  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("EXAM"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.yellow,
            child: Icon(Icons.home),
          ),
           Container(
            color: Colors.tealAccent,
            child: Icon(Icons.home),
          ),
           Container(
            color: Colors.yellowAccent,
            child: Icon(Icons.home),
          ),
        ]),
      ),
    );
  }
}
