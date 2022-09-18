import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/models/catalog.dart';
import 'package:flutter_tutorial_1/widgets/themes.dart';

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
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            onTap: () {
              print("${item.name} pressed.");
            },
            leading: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(item.imgURL),
            ),
            title: Text(item.name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(item.desc),
              Text("\$${item.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.darkBluishColor)),
            ]),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  backgroundColor: MyTheme.darkBluishColor,
                  // foregroundColor: MyTheme.darkBluishColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
              child: const Text("Buy"),
            ),
          ),
        ),
      ),
    );
  }
}
