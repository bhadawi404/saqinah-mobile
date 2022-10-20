import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saqinah/app/widget/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

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
          initialRoute: Routes.LOGIN,
          getPages: AppPages.routes,
        );
        }
      }
    );
  }
}