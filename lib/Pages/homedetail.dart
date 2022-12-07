import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogs.dart';
import 'package:flutter_application_1/widgets/homeWidgets/addtocart.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          foregroundColor: Colors.black,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.black.make(),
              AddtoCart(catalog:  catalog,).wh(125, 50)
            ],
          ).pOnly(right: 8.0).p32(),
        ),
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Hero(
                        tag: Key(catalog.id.toString()),
                        child: Image.network(catalog.image))
                    .h32(context),
                Expanded(
                    child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(Color.fromARGB(255, 230, 0, 0))
                            .bold
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                        "Dolor sed at ea amet diam consetetur dolore. Dolores sadipscing amet eirmod justo dolores, magna eirmod nonumy est rebum amet sed. Stet sanctus sadipscing consetetur duo, justo sanctus sea nonumy rebum. Sit sit dolor at dolore et, invidunt sed erat amet eirmod rebum et ipsum amet, et et ipsum sit."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
                      ],
                    ).py64(),
                  ),
                ))
              ],
            )));
  }
}
