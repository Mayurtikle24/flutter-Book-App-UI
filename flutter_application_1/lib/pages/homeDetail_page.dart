import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/catlogs.dart';

class HomeDetailUI extends StatelessWidget {
  const HomeDetailUI({
    Key? key,
    required this.Catalog,
  }) : super(key: key);

  final Item Catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyTheme.creamColor),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${Catalog.price}".text.red800.bold.xl3.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to Cart".text.xl.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(130, 50)
          ],
        ).p32(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(Catalog.id.toString()),
                    child: Image.network(Catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                  height: 30,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Expanded(
                      child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        Catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        Catalog.desc.text.color(Vx.gray500).make(),
                        10.heightBox,
                        "The iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface. The iPhone runs the iOS operating system"
                            .text
                            .color(Color.fromARGB(255, 99, 99, 107))
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
