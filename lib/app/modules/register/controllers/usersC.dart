import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saqinah/app/modules/register/models/userModel.dart';
import '../providers/usersP.dart';

class UsersC extends GetxController {
  //TODO: Implement RegisterController
 var isPasswordHide = true.obs;
 var users = List<User>.empty().obs;

 void snackBarError(String msg){
  Get.snackbar("Error", msg, duration: Duration(seconds: 2));
 }
 void dialogSuccess(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", backgroundColor: Color(0xFFE0A2A3),);
 }
 void dialogError(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", );
 }
 void add(String name, String email, String password){
  if (name != '' && email != '' && password != ''){
    if(email.contains("@")){
      UsersProvider().postData(name, email, password).then((value) => print(value));
      users.add(
        User(
          name: name,
          email: email,
          password: password,
          ),
        );
        Get.back();
        dialogSuccess("Sucess","Register Success silahkan melakukan login");
    }else{
      dialogError("Error", "Masukkan Email yang valid");
    }
  }
  if (name == '' && email != '' && password != ''){
    if(email.contains("@")){
      dialogError("Error", "Nama tidak boleh kosong");
    }else{
      dialogError("Error", "Nama tidak boleh kosong dan Email Invalid");
    }
  }
  if (name != '' && email == '' && password != ''){
    dialogError("Error", "Email tidak boleh kosong");
  }
  if (name != '' && email != '' && password == ''){
     dialogError("Error", "Password tidak boleh kosong");
  }
  if (name == '' && email == '' && password != ''){
    dialogError("Error", "Nama dan Email tidak boleh kosong");
  }
  if (name != '' && email == '' && password == ''){
    dialogError("Error", "Email dan Password tidak boleh kosong");
  }
  if (name == '' && email != '' && password == ''){
    dialogError("Error", "Nama dan Password tidak boleh kosong");
  }
  if (name == '' && email == '' && password == ''){
    dialogError("Error", "Semua data harus di isi");
  }
}
}