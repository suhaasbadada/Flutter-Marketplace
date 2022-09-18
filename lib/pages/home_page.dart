import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_tutorial_1/widgets/item_widget.dart';
import 'package:flutter_tutorial_1/widgets/themes.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

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
              const CatalogList()
            else
              const CircularProgressIndicator()
          ],
        ),
      ),
    ));
  }
}

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

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        },
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return ItemWidget(item: catalog);
  }
}
