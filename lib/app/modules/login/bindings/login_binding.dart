import 'package:get/get.dart';


import '../controllers/authC.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthC());
  }
}
