import 'dart:ui';

import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  String image;
  String title;
  String price;

  PromoCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.80 / 3,
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  height: 270,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                      )),
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(height: 3),
                Text(
                  price,
                  style: const TextStyle(fontSize: 15),
                )
              ],
            )));
  }
}
