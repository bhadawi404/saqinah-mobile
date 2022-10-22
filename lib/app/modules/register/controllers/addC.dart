import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddC extends GetxController {
 late TextEditingController nameC;
 late TextEditingController emailC;
 late TextEditingController passwordC;
 late TextEditingController idC;

 @override
 void onInit(){
  super.onInit();
  nameC = TextEditingController();
  emailC = TextEditingController();
  passwordC = TextEditingController();
  idC = TextEditingController();
 }

 @override
 void onClose(){
  super.onInit();
  nameC.dispose();
  emailC.dispose();
  passwordC.dispose();
  idC.dispose();
 }
 }

