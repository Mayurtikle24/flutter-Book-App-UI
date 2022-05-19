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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              ),
              SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Hey chromicle,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 28),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Find a book you want to read",
                  style: TextStyle(
                      color: Color.fromARGB(255, 139, 136, 136), fontSize: 23),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle),
                  child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search for anything",
                            hintStyle: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 139, 136, 136)),
                            border: InputBorder.none),
                      )),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
