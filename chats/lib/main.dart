// ignore_for_file: prefer_const_constructors, unused_import
import 'package:chats/screens/chat_screen.dart';
import 'package:chats/screens/wellcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth/rigester.dart';
import 'auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

import 'bindings/my_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      home: Rigester(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Rigester(), binding: MyBindings())
      ],
    );
  }
}
