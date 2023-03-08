// ignore_for_file: prefer_const_constructors, unused_import

import 'package:chats/screens/chat_screen.dart';
import 'package:chats/screens/wellcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/rigester.dart';
import 'auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rigester(),
    );
  }
}
