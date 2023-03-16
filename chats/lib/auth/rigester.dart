// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, unused_import, sized_box_for_whitespace, empty_catches, unused_local_variable

import 'package:chats/auth/sign_in.dart';
import 'package:chats/screens/chat_screen.dart';
import 'package:chats/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class Rigester extends StatelessWidget {
  Rigester({super.key});
  final _auth = FirebaseAuth.instance;
  RigesterController controller = Get.put(RigesterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: sized_box_for_whitespace

            Container(
              height: 160.0,
              child: Image.asset('images/3.png'),
            ),

            SizedBox(
              height: 30.0,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: ((value) {
                  controller.email = value;
                }),
                decoration: InputDecoration(
                    hintText: 'Number or email',
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                obscureText: true,
                onChanged: ((value) {
                  controller.password = value;
                }),
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
              child: MyButton(
                  color: Colors.teal,
                  title: 'Rigester',
                  onPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: controller.email!,
                              password: controller.password!);
                      Get.to(() => ChatScreen());
                    } catch (e) {
                      Text("$e");
                    }
                  }),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "If you hava acount ",
                  style: TextStyle(fontSize: 16.0),
                ),
                InkWell(
                  onTap: (() {
                    Get.to(() => SignIn());
                  }),
                  child: Text(
                    'Click here',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            )
          ]),
    );
  }
}
