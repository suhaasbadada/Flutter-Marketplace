// ignore_for_file: prefer_initializing_formals
import 'package:flutter/services.dart';
import 'dart:convert';

class CatalogModel {
  static final items = [
    Item(1, "iPhone 12 Pro", "Apple iPhone 12th Generation", 999, "#33505a",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
}

class Item {
  late int Id;
  late String name;
  late String desc;
  late num price;
  late String color;
  late String imgURL;

  Item(int Id, String name, String desc, num price, String color,
      String imgURL) {
    this.Id = Id;
    this.name = name;
    this.desc = desc;
    this.price = price;
    this.color = color;
    this.imgURL = imgURL;
  }
}
