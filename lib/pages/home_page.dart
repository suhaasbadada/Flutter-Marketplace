import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial_1/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'dart:convert';
import 'package:flutter_tutorial_1/widgets/themes.dart';

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
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Catalog App",
                // textScaleFactor: 1.5,
                style: TextStyle(
                  color: MyTheme.darkBluishColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                )),
            Text("Trending Products",
                style: TextStyle(
                  color: MyTheme.darkBluishColor,
                  fontSize: 18,
                )),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              const Expanded(child: CatalogList())
            else
              const Expanded(child: Center(child: CircularProgressIndicator()))
          ],
        ),
      ),
    ));
  }
}