class CatalogModel {
  static List<Item> items = [];
}

class Item {
  late int Id;
  late String name;
  late String desc;
  late num price;
  late String color;
  late String imgURL;

  // ignore: non_constant_identifier_names
  Item(
      {required this.Id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgURL});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      Id: map["Id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      imgURL: map["imgURL"],
    );
  }

  toMap() => {
        "Id": Id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imgURL": imgURL,
      };
}
