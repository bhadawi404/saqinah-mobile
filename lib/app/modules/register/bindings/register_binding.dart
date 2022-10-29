import 'package:get/get.dart';
import 'package:saqinah/app/modules/register/controllers/addC.dart';



class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddC());
  }
}
