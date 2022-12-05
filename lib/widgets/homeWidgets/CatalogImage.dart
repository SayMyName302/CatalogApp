import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({
    super.key,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    )
        .box
        .rounded
        .p8
        .color(Color.fromARGB(255, 245, 245, 245))
        .make()
        .p16()
        .w40(context);
  }
}
