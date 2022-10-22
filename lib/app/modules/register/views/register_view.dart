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
  // final _nameContoller = TextEditingController();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  void snackBarSuccess(String msg){
    Get.snackbar("Success", msg, duration: Duration(seconds: 2));
 }
 void snackBarError(String msg){
    Get.snackbar("Error", msg, duration: Duration(seconds: 2));
 }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
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
          TextField(
            controller: addC.nameC,
            decoration: InputDecoration(
                hintText: "Enter Your Name", border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            controller: addC.emailC,
            decoration: InputDecoration(
                hintText: "Enter Your Email", border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 6,
          ),
          TextField(
            controller: addC.passwordC,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Enter Your Password", border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 6,
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
            onPressed: () => usersC.add(
                  addC.nameC.text,
                  addC.emailC.text,
                  addC.passwordC.text,
                ),
            child: Text("SIGN UP"),
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
                Text("Sign Up with Google")
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
                          ..onTap = ()=> Get.toNamed(Routes.LOGIN),
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
        ));
  }
}
