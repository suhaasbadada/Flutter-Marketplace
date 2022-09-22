import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial_1/utils/routes.dart';
import 'package:flutter_tutorial_1/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_tutorial_1/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'dart:convert';
// ignore_for_file: deprecated_member_use

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
    var catalogJson = await rootBundle
        .loadString("assets/files/catalog.json"); // -> future return
    var decodedData = jsonDecode(catalogJson);
    var products = decodedData["products"];
    CatalogModel.items =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: Theme.of(context).buttonColor,
          child: const Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  const Expanded(child: CatalogList())
                else
                  const Expanded(
                      child: Center(child: CircularProgressIndicator()))
              ],
            ),
          ),
        ));
  }
}
