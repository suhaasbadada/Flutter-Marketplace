import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'package:flutter_tutorial_1/widgets/home_widgets/catalog_image.dart';
// ignore_for_file: deprecated_member_use

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 100,
        child: Card(
          color: Theme.of(context).cardColor,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            leading: Hero(
                tag: Key(item.Id.toString()),
                child: CatalogImage(
                  imgURL: item.imgURL,
                )),
            title: Text(item.name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(""),
              Text("\$${item.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
            ]),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  backgroundColor: Theme.of(context).buttonColor,
                  // foregroundColor: MyTheme.darkBluishColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
              child: const Icon(
                CupertinoIcons.cart_badge_plus,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
