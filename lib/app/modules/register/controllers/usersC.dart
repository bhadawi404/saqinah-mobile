import 'package:get/get.dart';
import 'package:saqinah/app/modules/login/views/login_view.dart';
import 'package:saqinah/app/modules/register/models/userModel.dart';

import '../providers/usersP.dart';
import '../utils/loadingRegister.dart';

class UsersC extends GetxController {

  var isPasswordHide = true.obs;
  var users = List<User>.empty().obs;

  void add(String name, String email, String password) {
    if (name != '' && email != '' && password != '') {
      if (email.contains("@")) {
        UsersProvider()
            .postData(name, email, password)
            .then((value) => print(value));
        users.add(
          User(
            name: name,
            email: email,
            password: password,
          ),
        );
        dialogLogin(title: "Please wait");
        Future.delayed(Duration(milliseconds: 1000), () {
          hideLoading();
          Get.to(LoginView());
          dialogSuccess("Success", "Register Berhasil !!!");
        });
      } else {
        dialogLogin(title: "Please wait");
        Future.delayed(Duration(milliseconds: 1000), () {
          hideLoading();
          dialogError("Error", "Masukkan Email yang valid");
        });
      }
    }
    if (name == '' && email != '' && password != '') {
      if (email.contains("@")) {
        dialogLogin(title: "Please wait");
        Future.delayed(Duration(milliseconds: 1000), () {
          hideLoading();
          dialogError("Error", "Nama tidak boleh kosong");
        });
      } else {
        dialogLogin(title: "Please wait");
        Future.delayed(Duration(milliseconds: 1000), () {
          hideLoading();
          dialogError("Error", "Nama tidak boleh kosong dan Email Invalid");
        });
      }
    }
    if (name != '' && email == '' && password != '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Email tidak boleh kosong");
      });
    }
    if (name != '' && email != '' && password == '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Password tidak boleh kosong");
      });
    }
    if (name == '' && email == '' && password != '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Nama dan Email tidak boleh kosong");
      });
    }
    if (name != '' && email == '' && password == '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Email dan Password tidak boleh kosong");
      });
    }
    if (name == '' && email != '' && password == '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Nama dan Password tidak boleh kosong");
      });
    }
    if (name == '' && email == '' && password == '') {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Semua data harus di isi");
      });
    }
  }
}
