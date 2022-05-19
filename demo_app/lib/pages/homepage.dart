import 'dart:ui';

import 'package:demo_app/widgets/promocard.dart';
import 'package:demo_app/widgets/tweenAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TweenAnimationUI(
                      tweenWidget: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: Text(
                          "Find Your",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    TweenAnimationUI(
                      tweenWidget: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: Text(
                          "Inspiration",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 20, bottom: 30),
                      child: Container(
                        height: 55,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(244, 243, 243, 1)),
                        child: const TextField(
                          maxLines: 1,
                          autocorrect: true,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Promo Today",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: const [
                          PromoCard(image: "assets/images/one.jpg"),
                          PromoCard(image: "assets/images/two.jpg"),
                          PromoCard(image: "assets/images/three.jpg"),
                          PromoCard(image: "assets/images/four.jpg"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/three.jpg"),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [0.3, 0.9],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2)
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Best Design",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
