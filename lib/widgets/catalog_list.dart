import 'package:flutter/material.dart';
import 'package:marvel_world/models/catalog.dart';
import 'package:marvel_world/widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () {},
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    String color = "0xFF" + catalog.color;
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.name), child: CatalogImage(image: catalog.image))
        ],
      ),
    )
        .color(context.cardColor)
        .rounded
        .square(250)
        .color(Color(int.parse(color)).withOpacity(0.5))
        .make()
        .py16();
  }
}
