import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
      children: [
          Container(
            alignment: Alignment.center,
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Image.asset("assets/logo/logo-splash.png", fit: BoxFit.contain,),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Enter Your Email", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Your Password", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 6,
          ),
          RichText(
              text: TextSpan(
                  text: "By continuing you agree to the Saqinah ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                  children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Term of Service ");
                      },
                    text: "Term of Service ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 10,
                    )),
                TextSpan(
                    text: "and ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    )),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Privacy Policy");
                      },
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 10,
                    )),
              ])),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: ()=> Get.offAllNamed(Routes.HOME),
            child: Text("SIGN IN"),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFF9642), fixedSize: Size(100, 45)),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [Text("or")],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icon/google.png"),
                SizedBox(
                  width: 10,
                ),
                Text("Sign In with Google")
              ],
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9999AA),fixedSize: Size(100, 45)),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              RichText(
                  text: TextSpan(
                      text: "or  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = ()=> Get.toNamed(Routes.REGISTER),
                        text: "Don’t Have Account",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                        )),
                    
                  ])),
            ],
          ),
      ],
    ),
        ));
  }
}
