import 'package:flutter/material.dart';
import '../widgets/appbarUI.dart';
import '../widgets/itemlistView.dart';
import '../widgets/textFieldUI.dart';

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 20, 15),
                    child: AppBarUI(),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Hey Sara,",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 28),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Find a book you want to read",
                      style: TextStyle(
                          color: Color.fromARGB(255, 139, 136, 136),
                          fontSize: 23),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldUI(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Category",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 23),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[300],
                              fontSize: 18),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 350,
                    child: const ItemListView(),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
