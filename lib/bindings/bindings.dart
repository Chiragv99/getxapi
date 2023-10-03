import 'package:get/get.dart';
import 'package:getxapi/theme/theme_controller.dart';

class MyBindings extends Bindings{
  
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController());
  }
}