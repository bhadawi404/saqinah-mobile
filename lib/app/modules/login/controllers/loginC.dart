import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:saqinah/app/modules/home/views/home_view.dart';
import 'package:saqinah/app/modules/login/models/loginModel.dart';

import '../providers/loginP.dart';
import '../utils/loadingLogin.dart';

class LoginC extends GetxController {

  var isPasswordHide = true.obs;
  var logins = List<Login>.empty().obs;
  LoginProvider loginprovider = LoginProvider();
  
  //0 = No Internet, 1 = WIFI Connected ,2 = Mobile Data Connected.
  var connectionType = 0.obs;
  final Connectivity _connectivity = Connectivity();

  late StreamSubscription _streamSubscription;

  void snackBarError(String msg) {
    Get.snackbar("Error", msg, duration: Duration(seconds: 2));
  }

  @override
  void onInit() {
    super.onInit();
    getConnectivityType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
  }
  Future<void> getConnectivityType() async {
    late ConnectivityResult connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _updateState(connectivityResult);
  }
  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType.value = 1;
        update();
        print(connectionType.value);
        print("==1==");
        break;
      case ConnectivityResult.mobile:
        connectionType.value = 2;
        update();
        print(connectionType.value);
        print("==2==");
        break;
      case ConnectivityResult.none:
        connectionType.value = 0;
        update();
        print(connectionType.value);
        print("==3==");
        break;
      default:
        snackBarError('Failed to get connection type');
        break;
    }
  }
  @override
  void onClose() {
    _streamSubscription.cancel();
  }



  void add(String email, String password) async {
    var response = await loginprovider.postData(email, password);
    // var responseData = json.decode(response.body)['data'];
    // print(responseData['token']);
    print(response.statusCode);
    print("*****");
    if (response.statusCode == 200) {
      LoginProvider().postData(email, password).then((value) => print(value));
      logins.add(
        Login(
          email: email,
          password: password,
        ),
      );
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        Get.off(HomeView());
      });
    }
    if (response.statusCode == 404) {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Email tidak terdaftar");
      });
    }
    if (response.statusCode == 401) {
      dialogLogin(title: "Please wait");
      Future.delayed(Duration(milliseconds: 1000), () {
        hideLoading();
        dialogError("Error", "Email atau password salah");
      });
    }
  }
}
