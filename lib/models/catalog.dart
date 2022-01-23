class CatalogModel {
  static List<Item> items = [];

  //get item
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final String name;
  final String image;
  final String color;

  Item({required this.name, required this.image, required this.color});
}
