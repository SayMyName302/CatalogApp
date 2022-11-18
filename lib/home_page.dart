import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Awais";
    bool isMale = true;
    num temp = 30.5;
    var day = "Tuesday";
    const pi = 3.14;
    return Scaffold(
      appBar: AppBar(title: Text("Catalog Application")),
      body: Center(
        child: Container(child: Text("Welcome to $days Plan B by $name")),
      ),
      drawer: Drawer(),
    );
  }
}
