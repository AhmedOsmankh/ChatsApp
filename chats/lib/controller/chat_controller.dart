// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatController extends GetxController {
  late User signInUser; //this is will give us the email
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  String? messageText; //this is will give us the messege

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
    super.onInit();
    getCurrentUser();
  }
}
