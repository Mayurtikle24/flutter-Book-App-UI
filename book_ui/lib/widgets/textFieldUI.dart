import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldUI extends StatelessWidget {
  TextFieldUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle),
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black87,
                  ),
                  hintText: "Search for anything",
                  hintStyle: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 139, 136, 136)),
                  border: InputBorder.none),
            )),
      ),
    );
  }
}
