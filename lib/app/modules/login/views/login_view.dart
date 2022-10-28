import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/routes/app_pages.dart';

import '../../../widget/noconnection.dart';
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
      child: Obx(() =>
          loginC.connectionType.value == 1 || loginC.connectionType.value == 2
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: Get.width * 0.5,
                        height: Get.width * 0.5,
                        child: Image.asset(
                          "assets/logo/logo-splash.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: authC.emailC,
                        decoration: InputDecoration(
                            hintText: "Enter Your Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () => TextField(
                          controller: authC.passwordC,
                          obscureText: loginC.isPasswordHide.value,
                          decoration: InputDecoration(
                              suffix: InkWell(
                                child: Icon(
                                  loginC.isPasswordHide.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                onTap: () {
                                  loginC.isPasswordHide.value =
                                      !loginC.isPasswordHide.value;
                                },
                              ),
                              hintText: "Enter Your Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    recognizer: TapGestureRecognizer()
                                        ..onTap =
                                            () {},
                                      text: "Forgot Password",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                    ),
                                    )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () => loginC.add(
                          authC.emailC.text,
                          authC.passwordC.text,
                        ),
                        child: Text("SIGN IN"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE0A2A3),
                            fixedSize: Size(100, 45)),
                      ),
                      SizedBox(
                        height: 30,
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
                                      ..onTap =
                                          () => Get.toNamed(Routes.REGISTER),
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
                )
              : CheckConnection()),
    ));
  }
}
