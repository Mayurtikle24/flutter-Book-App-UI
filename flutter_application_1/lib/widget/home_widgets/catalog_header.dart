import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatlogHeader extends StatelessWidget {
  const CatlogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catlog App".text.bold.xl5.color(context.theme.accentColor).make(),
        "Treanding products".text.xl2.make()
      ],
    );
  }
}
