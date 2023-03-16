import 'package:get/get.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

class ChatController extends GetxController {
  late User signInUser;
  final auth = FirebaseAuth.instance;

  void getCurrentUser() {
    try {
      final user = auth.currentUser;
      if (user != null) {
        signInUser = user;
        print(signInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    getCurrentUser();
    super.onInit();
  }
}
