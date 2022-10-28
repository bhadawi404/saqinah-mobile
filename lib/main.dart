import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/widget/splash.dart';


import 'app/modules/login/controllers/loginC.dart';
import 'app/modules/register/controllers/usersC.dart';
import 'app/routes/app_pages.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  final userC = Get.put(UsersC());
  final loginC = Get.put(LoginC());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return SplashScreen();
        }else{
          return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: Routes.HOME,
          getPages: AppPages.routes,
        );
        }
      }
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
