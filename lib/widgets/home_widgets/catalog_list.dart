import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'package:flutter_tutorial_1/pages/home_detail_page.dart';
import 'package:flutter_tutorial_1/widgets/item_widget.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog= CatalogModel.items[index];
          return InkWell(
              onLongPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
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
