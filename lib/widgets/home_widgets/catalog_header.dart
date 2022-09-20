import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/widgets/themes.dart'; 

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Catalog App",
            textScaleFactor: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyTheme.darkBluishColor,
            )),
        Text("Trending Produts",
            textScaleFactor: 1.3,
            style: TextStyle(
              color: MyTheme.darkBluishColor,
            )),
      ],
    );
  }
}
