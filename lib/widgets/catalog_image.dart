import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      fit: BoxFit.fill,
    )
        .box
        .make()
        .wPCT(context: context, widthPCT: 100)
        .hPCT(context: context, heightPCT: 100);

    // .box
    // .rounded
    // .p8
    // .color(context.canvasColor)
    // .make()
    // .p16()
    // .wPCT(context: context, widthPCT: context.isMobile ? 60 : 20);
  }
}
