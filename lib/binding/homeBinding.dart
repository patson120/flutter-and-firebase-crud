import 'package:get/get.dart';
import 'package:todolist/controller/homeCtrl.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
