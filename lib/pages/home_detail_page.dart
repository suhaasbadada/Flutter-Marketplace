import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'package:flutter_tutorial_1/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_tutorial_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      MyTheme.darkBluishColor,
                    ),
                    shape: MaterialStateProperty.all(
                      const StadiumBorder(),
                    )),
                child: "Buy".text.make(),
              ).wh(100, 50)
            ],
          ).p32(),
        ),
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  child: Hero(
                      tag: catalog.Id, child: Image.network(catalog.imgURL))),
            ),
          ),
        ));
  }
}
