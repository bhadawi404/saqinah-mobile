import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/modules/register/controllers/addC.dart';
import 'package:saqinah/app/modules/register/controllers/usersC.dart';
import 'package:saqinah/app/modules/register/providers/usersP.dart';
import 'package:saqinah/app/routes/app_pages.dart';

class RegisterView extends StatelessWidget {
  final usersC = Get.find<UsersC>();
  final addC = Get.find<AddC>();
  UsersProvider usersprovider = UsersProvider();

  void snackBarSuccess(String msg) {
    Get.snackbar("Success", msg, duration: Duration(seconds: 2));
  }

  void snackBarError(String msg) {
    Get.snackbar("Error", msg, duration: Duration(seconds: 2));
  }

  void clearText() {
    addC.nameC.clear();
    addC.emailC.clear();
    addC.passwordC.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
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
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
                        height: 20,
                      ),
            TextField(
              controller: addC.nameC,
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: addC.emailC,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => TextField(
                controller: addC.passwordC,
                obscureText: usersC.isPasswordHide.value,
                decoration: InputDecoration(
                    suffix: InkWell(
                      child: Icon(
                        usersC.isPasswordHide.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        usersC.isPasswordHide.value =
                            !usersC.isPasswordHide.value;
                      },
                    ),
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => usersC.add(
                addC.nameC.text,
                addC.emailC.text,
                addC.passwordC.text,
              ),
              child: Text("SIGN UP"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE0A2A3), fixedSize: Size(100, 45)),
            ),
            SizedBox(
              height: 35,
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
                            ..onTap = () => Get.toNamed(Routes.LOGIN),
                          text: "Already have an account ? Sign In ",
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
