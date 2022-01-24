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
    return Container(
      height: 250,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(int.parse(color)).withOpacity(0.65),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 30,
                            offset: const Offset(0, 10)),
                      ]),
                  margin: const EdgeInsets.only(top: 50),
                ),
                Align(child: CatalogImage(image: catalog.image))
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(top: 70, bottom: 20),
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: context.cardColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 30,
                    offset: const Offset(0, 10)),
              ],
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.xl3.color(Color(0xff123456)).bold.make(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
