import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widget/theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeDetailRoute,
        routes: {
          "/": (context) => const LoginPageUI(),
          MyRoutes.logInRoute: (context) => const LoginPageUI(),
          MyRoutes.homeRoute: (context) => HomePageUI(),
          MyRoutes.cartRoute: (context) => const CartUI()
        });
  }
}
