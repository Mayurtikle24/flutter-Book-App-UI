import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
      )
          .box
          .color(context.canvasColor)
          .rounded
          .p8
          .size(50, 120)
          .make()
          .p16()
          .w40(context),
    );
  }
}
