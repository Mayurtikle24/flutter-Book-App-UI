import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/catlogs.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:flutter_application_1/widget/item_widget.dart';
import 'package:flutter_application_1/widget/theme.dart';
import '../widget/home_widgets/catalog_header.dart';
import '../widget/home_widgets/catalog_list.dart';

class HomePageUI extends StatefulWidget {
  HomePageUI({Key? key}) : super(key: key);

  @override
  State<HomePageUI> createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catlogJson = await rootBundle.loadString("assets/files/catlog.json");
    final decodeData = jsonDecode(catlogJson);
    var productData = decodeData["products"];
    CatalogModel.items =
        List.from(productData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
        backgroundColor: context.theme.buttonColor,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatlogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  const CatlogList().py16().expand()
                else
                  const Center(child: CircularProgressIndicator())
              ],
            )),
      ),
    );
  }
}
