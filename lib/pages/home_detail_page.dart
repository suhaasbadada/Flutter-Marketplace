// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).canvasColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              Text(
                "\$${catalog.price}",
                textScaleFactor: 2.2,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).buttonColor,
                    ),
                    shape: MaterialStateProperty.all(
                      const StadiumBorder(),
                    )),
                child: const Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                ),
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 300,
                    width: 300,
                    child: Hero(
                        tag: catalog.Id,
                        child: Image.network(
                          catalog.imgURL,
                          width: 250,
                          height: 250,
                        ))),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                        child: Text(
                          catalog.name,
                          textScaleFactor: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).cardColor),
                        ),
                      ),
                      Text(
                        catalog.desc,
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).cardColor),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                              "Gubergren lorem accusam lorem aliquyam takimata. Invidunt eos diam duo sadipscing. Invidunt nonumy dolor et ut stet diam. Takimata magna.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Theme.of(context).cardColor)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
