import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/store.dart';

import 'package:flutter_application_1/models/catalogs.dart';

import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/utils/routes.dart';
import '../widgets/homeWidgets/CatalogHeader.dart';
import '../widgets/homeWidgets/CatalogList.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assests/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          child: Icon(CupertinoIcons.cart),
        ).badge(
            color: Color.fromARGB(255, 0, 0, 0),
            size: 20,
            count: _cart.items.length),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items !=null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().py16().expand(),
              ],
            ),
          ),
        ));
  }
}

/*
  bringVegetables ({@required bool shapper=true,int rupees=100}){// curly bracket mein likhi cheez optional hoti hai
//@required hoga to vo cheez laazmi provide krni hogi
  }
}
*/





