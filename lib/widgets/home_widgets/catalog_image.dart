import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String imgURL;

  const CatalogImage({super.key, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Image.network(imgURL)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        // .p16()
        .w20(context);
  }
}
