import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthC extends GetxController {
 late TextEditingController emailC;
 late TextEditingController passwordC;

 @override
 void onInit(){
  super.onInit();
  emailC = TextEditingController();
  passwordC = TextEditingController();
 }

 @override
 void onClose(){
  super.onInit();
  emailC.dispose();
  passwordC.dispose();
 }
 }

