import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/routes/app_pages.dart';

import '../controllers/authC.dart';
import '../controllers/loginC.dart';
import '../providers/loginP.dart';

class LoginView extends StatelessWidget {
  final loginC = Get.find<LoginC>();
  final authC = Get.find<AuthC>();
  LoginProvider loginprovider = LoginProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: Get.width * 0.5,
              height: Get.width * 0.5,
              child: Image.asset("assets/logo/logo-splash.png", fit: BoxFit.contain,),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: authC.emailC,
              decoration: InputDecoration(
                
                  hintText: "Enter Your Email", border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: authC.passwordC,
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter Your Password", border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(
                    text: "By continuing you agree to the Saqinah ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
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
                        fontSize: 14,
                      )),
                  TextSpan(
                      text: "and ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      )),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policy");
                        },
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                      )),
                ])),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: ()=> loginC.add(
                    authC.emailC.text,
                    authC.passwordC.text,
                  ),
              child: Text("SIGN IN"),
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFE0A2A3), fixedSize: Size(100, 45)),
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
                          fontSize: 14,
                        ),
                        children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = ()=> Get.toNamed(Routes.REGISTER),
                          text: "Don’t Have Account",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                          )),
                      
                    ])),
              ],
            ),
              ],
            ),
          ),
        ));
  }
}
