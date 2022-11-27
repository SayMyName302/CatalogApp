import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

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
      drawer: MyDrawer(),
    );
  }
}
  /*
  bringVegetables ({@required bool shapper=true,int rupees=100}){// curly bracket mein likhi cheez optional hoti hai
//@required hoga to vo cheez laazmi provide krni hogi
  }
}
*/
