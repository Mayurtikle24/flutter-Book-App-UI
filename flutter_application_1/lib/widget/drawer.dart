import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 4, 105, 97),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 4, 105, 97)),
                margin: EdgeInsets.zero,
                accountName: Text("Mayur Tikle"),
                accountEmail: Text("mayurtikle24@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/mayur.png"),
                )),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Color.fromARGB(255, 222, 239, 34),
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.amber),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Color.fromARGB(255, 222, 239, 34),
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.amber),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Color.fromARGB(255, 222, 239, 34),
            ),
            title: Text(
              "Email Me",
              style: TextStyle(color: Colors.amber),
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
