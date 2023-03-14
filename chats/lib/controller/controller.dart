import 'package:get/get.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

class Controller extends GetxController {
  final auth = FirebaseAuth.instance;
  String? email;
  String? password;
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }
}
