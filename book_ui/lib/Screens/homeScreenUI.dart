import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          body: Container(
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
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
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
