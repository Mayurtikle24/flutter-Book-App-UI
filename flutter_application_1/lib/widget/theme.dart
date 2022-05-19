import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamColor,
        accentColor: darkBluishColor,
        buttonColor: darkBluishColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: DarkcreamColor,
      accentColor: Colors.white,
      buttonColor: lightBluishColor,
      appBarTheme: const AppBarTheme(
          color: Colors.black,
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          )));

  static Color creamColor = Color(0xfff5f5f5);
  static Color DarkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
