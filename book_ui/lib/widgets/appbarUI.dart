import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarUI extends StatelessWidget {
  const AppBarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          CupertinoIcons.bars,
          color: Colors.black87,
          size: 30,
        ),
        Image.asset(
          'assets/images/profileImage.png',
          height: 35,
        )
      ],
    );
  }
}
