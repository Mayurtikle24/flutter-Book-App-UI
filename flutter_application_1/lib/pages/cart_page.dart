import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartUI extends StatelessWidget {
  const CartUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartColor = Colors.black;

    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: "Cart".text.xl.bold.make(),
      ),
    );
  }
}
