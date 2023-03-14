import 'package:get/get.dart';

import '../controller/controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Controller(), permanent: true);
  }
}
