// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

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
              color: Theme.of(context).accentColor,
            )),
        Text("Trending Produts",
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Theme.of(context).accentColor,
            )),
      ],
    );
  }
}
