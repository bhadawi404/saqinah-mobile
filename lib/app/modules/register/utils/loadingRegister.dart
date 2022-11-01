import 'package:flutter/material.dart';
import 'package:get/get.dart';

void snackBarError(String msg){
  Get.snackbar("Error", msg, duration: Duration(seconds: 2));
 }
 void dialogSuccess(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", backgroundColor: Color(0xFFE0A2A3),);
 }
 void dialogError(String title, String middletext){
  Get.defaultDialog(title: title, middleText: middletext, textCancel: "Oke", );
 }

  void dialogLogin({String title ="Loading..."}) {
    Get.dialog(Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  ),
                  Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                  )
              ],
            ),
          ),
        ),
    ),
    barrierDismissible: false,
    );
  }
  void hideLoading(){
    Get.back();
  }