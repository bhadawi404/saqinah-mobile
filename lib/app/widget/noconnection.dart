import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckConnection extends StatelessWidget {
  const CheckConnection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
              child: Image.asset("assets/images/notconnection.jpg", width: Get.width * 0.5,
                            height: Get.width * 0.5,),
                            
        ),
        Text("Not Connection")
            ],
          )),
      ),
    );
  }
}