import 'package:flutter/material.dart';

class TweenAnimationUI extends StatelessWidget {
  Widget tweenWidget;
  TweenAnimationUI({
    Key? key,
    required this.tweenWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: tweenWidget,
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 500),
        builder: (BuildContext context, double size, Widget? child) {
          return Opacity(
            opacity: size,
            child: Padding(
              padding: EdgeInsets.only(top: size * 10),
              child: child,
            ),
          );
        });
  }
}
