class CatalogModel {
  static List<Item> items = [
    // Item(
    //     Id: 1,
    //     name: "iPhone 12 Pro",
    //     desc: "Apple iPhone 12th Generation",
    //     price: 999,
    //     color: "#33505a",
    //     imgURL:
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
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

  // Item(int Id, String name, String desc, num price, String color,
  //     String imgURL) {
  //   this.Id = Id;
  //   this.name = name;
  //   this.desc = desc;
  //   this.price = price;
  //   this.color = color;
  //   this.imgURL = imgURL;
  // }

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
