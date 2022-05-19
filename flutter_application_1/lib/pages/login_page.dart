import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPageUI extends StatefulWidget {
  const LoginPageUI({Key? key}) : super(key: key);

  @override
  State<LoginPageUI> createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                20.heightBox,
                "Welcome $name".text.bold.size(25).make(),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) => {name = value, setState(() {})},
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          label: Text("Username"),
                        ),
                        validator: (String? value) {
                          if (value == null) {
                            return "UserName Cannot be Empty";
                          }
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            label: Text("Password"),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return "Password Cannot be Empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                          }),
                      30.heightBox,
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveTohome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50.0,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //   onPressed: () {
                      //
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
