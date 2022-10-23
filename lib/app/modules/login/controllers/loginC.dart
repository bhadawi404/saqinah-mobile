import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saqinah/app/modules/login/models/loginModel.dart';

import '../../../routes/app_pages.dart';
import '../providers/loginP.dart';

class LoginC extends GetxController {
  //TODO: Implement RegisterController
 var isPasswordHide = true.obs;
 var logins = List<Login>.empty().obs;
 LoginProvider loginprovider = LoginProvider();
 void snackBarError(String msg){
  Get.snackbar("Error", msg, duration: Duration(seconds: 2));
 }
 void dialogSuccess(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", backgroundColor: Color(0xFFE0A2A3),);
 }
 void dialogError(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", );
 }
 void add(String email, String password) async{
  var response = await loginprovider.postData(email, password);
  if(response.statusCode == 200){
        LoginProvider().postData(email, password).then((value) => print(value));
        logins.add(
          Login(
            email: email,
            password: password,
            ),
          );
          Get.offAllNamed(Routes.HOME);
  }
  if(response.statusCode == 404){
    dialogError("Error", "Email tidak terdaftar");
  }
  if(response.statusCode == 401){
    dialogError("Error", "Email atau password salah");
  }
  
 }
}
  