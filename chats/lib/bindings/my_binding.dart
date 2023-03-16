import 'package:chats/controller/chat_controller.dart';
import 'package:chats/controller/sign_controller.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<RigesterController>(RigesterController(), permanent: true);
    Get.put<ChatController>(ChatController(), permanent: true);
    Get.put<SignController>(SignController(), permanent: true);
  }
}
