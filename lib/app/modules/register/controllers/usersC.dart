import 'dart:convert';

import 'package:get/get.dart';
import 'package:saqinah/app/modules/register/models/userModel.dart';
import '../providers/usersP.dart';

class UsersC extends GetxController {
  //TODO: Implement RegisterController

 var users = List<User>.empty().obs;

 void snackBarError(String msg){
  Get.snackbar("Error", msg, duration: Duration(seconds: 2));
 }
 void snackBarSuccess(String msg){
  Get.snackbar("Success", msg, duration: Duration(seconds: 2));
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
        snackBarSuccess("Register Success");
    }else{
      snackBarError("Masukkan Email yang valid");
    }
  }
  if (name == '' && email != '' && password != ''){
    if(email.contains("@")){
      snackBarError("Nama tidak boleh kosong");
    }else{
      snackBarError("Nama tidak boleh kosong dan Email Invalid");
    }
  }
  if (name != '' && email == '' && password != ''){
    snackBarError("Email tidak boleh kosong");
  }
  if (name != '' && email != '' && password == ''){
     snackBarError("Password tidak boleh kosong");
  }
  if (name == '' && email == '' && password != ''){
    snackBarError("Nama dan Email tidak boleh kosong");
  }
  if (name != '' && email == '' && password == ''){
    snackBarError("Email dan Password tidak boleh kosong");
  }
  if (name == '' && email != '' && password == ''){
    snackBarError("Nama dan Password tidak boleh kosong");
  }
  if (name == '' && email == '' && password == ''){
    snackBarError("Semua data harus diisi");
  }
}
}