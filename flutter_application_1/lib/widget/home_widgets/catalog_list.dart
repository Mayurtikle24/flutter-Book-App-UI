import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlogs.dart';
import 'package:flutter_application_1/pages/homeDetail_page.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatlogList extends StatelessWidget {
  const CatlogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: (() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetailUI(Catalog: catalog)))),
          child: CatlogItem(Catalog: catalog),
        );
      },
    );
  }
}

class CatlogItem extends StatelessWidget {
  final Item Catalog;

  const CatlogItem({Key? key, required this.Catalog})
      : assert(Catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(Catalog.id.toString()),
            child: CatalogImage(image: Catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Catalog.name.text.lg.color(context.accentColor).bold.make(),
            Catalog.desc.text.color(Vx.gray500).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${Catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Add to Cart".text.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py16();
  }
}
