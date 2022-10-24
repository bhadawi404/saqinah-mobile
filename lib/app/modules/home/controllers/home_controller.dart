import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saqinah/app/modules/login/bindings/login_binding.dart';
import 'package:saqinah/app/modules/login/views/login_view.dart';

import '../bindings/home_binding.dart';
import '../views/home_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var selectedIndex = 0.obs;
  var textValue = 0.obs;

  void changeIndex(int index){
    selectedIndex.value = index;
  }
  void increaseValue(){
    textValue.value++;
  }
  
  

  
}
