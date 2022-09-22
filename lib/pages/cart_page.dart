import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(
              color: MyTheme.darkBluishColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
